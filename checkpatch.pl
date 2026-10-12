#!/usr/bin/env perl
# SPDX-License-Identifier: GPL-2.0-Only

use strict;
use warnings;

my $errors = 0;
my $warnings = 0;

sub error {
    my ($file, $line_num, $msg) = @_;
    print STDERR "ERROR: $msg at $file line $line_num\n";
    $errors++;
}

sub process_file {
    my ($file) = @_;
    open(my $fh, '<', $file) or do {
        warn "Could not open $file: $!\n";
        return;
    };

    my $line_num = 0;
    my $prev_line = "";

    while (my $line = <$fh>) {
        $line_num++;
        chomp $line;

        # 1. Check GNU Assembly (.S) instructions for register formatting (must use %)
        if ($file =~ /\.S$/i) {
            # Catch bad mov instruction without % on registers, e.g., mov rax, rbx
            if ($line =~ /^\s*(mov|add|sub|and|or|xor|cmp|test)\s+([a-zA-Z0-9_]+)\s*,\s*([a-zA-Z0-9_]+)/i) {
                my $reg1 = $2;
                my $reg2 = $3;
                # If they are not literals (starting with $) and don't have %, throw error
                if ($reg1 !~ /^[\$%]/ && $reg1 =~ /^[a-zA-Z]/ && $reg2 !~ /^[\$%]/ && $reg2 =~ /^[a-zA-Z]/) {
                    error($file, $line_num, "GNU Assembly style error: registers must use '%' prefix (e.g., mov %$reg1, %$reg2)");
                }
            }
            # Catch single or multi-register bad operands without %
            if ($line =~ /^\s*(push|pop|inc|dec|not|neg)\s+([a-zA-Z0-9_]+)/i) {
                my $op = $2;
                if ($op !~ /^[\$%]/ && $op =~ /^[a-zA-Z]/) {
                    error($file, $line_num, "GNU Assembly style error: operand register must use '%' prefix (e.g., push %$op)");
                }
            }
        }

        # 2. Check C, C++, and C# brace placement (opening brace must be on a new line)
        if ($file /\.(c|cpp|h|cs)$/i) {
            # Check function/control statements ending with '{' on the same line, e.g., void foo() { or if (...) {
            if ($line =~ /(if|for|while|switch|catch|using|lock)\s*\(.*\)\s*\{\s*$/ ||
                $line =~ /^[a-zA-Z0-9_\<\>:\s\*]+\s+[a-zA-Z0-9_]+\s*\(.*\)\s*\{\s*$/) {
                error($file, $line_num, "Brace placement error: opening brace '{' must be placed on the next line");
            }
        }

        $prev_line = $line;
    }
    close($fh);
}

my @files = @ARGV;
if (!@files) {
    print "Usage: checkpatch.pl <file1.c> <file2.S> ...\n";
    exit(1);
}

foreach my $f (@files) {
    if (-f $f) {
        process_file($f);
    }
}

if ($errors > 0) {
    print STDERR "\nTotal Errors found: $errors\n";
    exit(1);
} else {
    print "checkpatch.pl: Code style check passed successfully.\n";
    exit(0);
}
