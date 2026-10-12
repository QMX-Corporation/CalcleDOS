# Contributing to CalcleDOS

CalcleDOS is an uncompromising, high-performance interactive computing environment designed under strict low-level engineering standards. We welcome contributions from individual developers, academic researchers, and enterprise engineering teams (including Microsoft, Google, Intel, AMD, NVIDIA, Meta, Red Hat, and others).

## Engineering Standards & Code Etiquette
1. **Toolchain Compliance:** All code must compile cleanly using **Clang/LLD**, **GNU Assembler (`as`)**, and **.NET 9** without warnings under rigorous optimization flags (`-O3`, `-fno-builtin`, `-fno-rtti`).
2. **Style Enforcement:** Every commit must pass our strict syntax and style checks via `checkpatch.pl`. GNU Assembly (`.S`) files **must** use the `%` prefix for all registers. C, C++, and C# files **must** place opening braces (`{`) on a new line.
3. **Licensing:** All source files must carry the correct SPDX header:
```c
   // SPDX-License-Identifier: GPL-2.0-Only
```
4. Corporate & Individual Contributions: Contributions must comply with our CLA.md terms. Enterprise contributors must ensure their submissions clear their respective corporate legal and IP compliance frameworks.

---

## Pull Request Lifecycle
1. Branching: Base all pull requests against the main or master branch in a dedicated feature branch.
2. CI Validation: Ensure all automated GitHub Actions workflows (ci.yml and checksyntax.yml) pass successfully.
3. BDFL & Maintainer Review: Major architectural changes or core low-level modifications require explicit sign-off by the BDFL (dev12124) or designated core maintainers.