#!/usr/bin/env sh
# SPDX-License-Identifier: GPL-2.0-Only

commit_message_file="$1"
commit_message=$(cat "$commit_message_file")

# Conventional Commits regex pattern: type(scope)?: description
# Types allowed: feat, fix, docs, style, refactor, perf, test, build, ci, chore, revalidate
pattern="^(feat|fix|docs|style|refactor|perf|test|build|ci|chore)(\(.+\))?: .{1,}"

if ! echo "$commit_message" | grep -qE "$pattern"; then
    echo "========================================================"
    echo "ERROR: Invalid Git commit message format!"
    echo "CalcleDOS enforces Conventional Commits standard."
    echo "Format required: <type>[optional scope]: <description>"
    echo "Examples:"
    echo "  feat: Add interactive calculation shell"
    echo "  docs: fix a typo in README.md"
    echo "  fix: resolve register parsing error in GNU Assembly"
    echo "========================================================"
    exit 1
fi
