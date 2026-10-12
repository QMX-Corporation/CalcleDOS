# Changelog

All notable changes to CalcleDOS will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to Semantic Versioning.

## [Unreleased]

## [0.0.1] - 2026-10-12

### Added
- Initial project structure under QMX Corporation governance.
- BDFL governance model (`GOVERNANCE.md`) and strict maintainer criteria (`CONTRIBUTORS.md`).
- SPDX license integration (`GPL-2.0-Only`) across source files and root notice.
- Custom style checker script (`checkpatch.pl`) enforcing GNU Assembly register prefixes (`%`) and brace placement rules for C, C++, and C#.
- GitHub Actions workflows for continuous integration (`ci.yml`) and syntax validation (`checksyntax.yml`).
- Automated multi-language build pipeline supporting Clang, LLD, GNU Assembler (`as`), and .NET 9 to output `DOS-Calcle.exe`.
- Standardized GitHub templates for bug reports, feature requests, and pull requests.
- Development container setup (`.devcontainer/`) with Dockerfile and configuration.
- Comprehensive project documentation including `README.md`, `ROADMAP.md`, `SECURITY.md`, `SUPPORT.md`, and `CODE_OF_CONDUCT.md`.
