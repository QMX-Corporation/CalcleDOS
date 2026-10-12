# CalcleDOS Roadmap

This roadmap outlines the planned development phases and future milestones for CalcleDOS, developed under QMX Corporation.

## Phase 1: Foundation and Windows Core (Current)
* [x] Establish robust repository governance, SPDX licensing, and security policies.
* [x] Set up strict syntax checkers (`checkpatch.pl`) and automated GitHub Actions CI/CD workflows.
* [x] Configure multi-language build pipeline (.NET 9, Clang, LLD, GNU Assembler) producing `DOS-Calcle.exe`.
* [ ] Implement core calculation engine and basic interactive shell interface for Windows.

## Phase 2: Graphical User Interface & AI Integration
* [ ] Design and implement the graphical user interface (GUI) tailored for high performance.
* [ ] Integrate local/cloud AI chatbot capabilities for intelligent query processing and assistance.
* [ ] Expand unit test suites and rigorous code coverage analysis via CI/CD.

## Phase 3: Multi-Platform Expansion
* [ ] Port the core engine and interface to **Linux** (XFCE and general distributions).
* [ ] Extend support to **macOS** environments.
* [ ] Adapt execution for **Android** (leveraging Termux integration and native components).
* [ ] Broaden compatibility across remaining **Unix** variants.

## Phase 4: Advanced Low-Level Optimizations & Ecosystem Maturity
* [ ] Fine-tune compilation flags (`-O3`, `-fno-builtin`, `-fno-rtti`) for maximum binary efficiency.
* [ ] Establish formal UEFI Class 3 exploration and low-level firmware integration hooks where applicable.
* [ ] Onboard elite maintainers meeting strict technical and theoretical competencies.
