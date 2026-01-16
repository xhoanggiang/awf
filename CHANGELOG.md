# AWF Changelog

All notable changes to AWF will be documented in this file.

## [3.2.0] - 2026-01-16

### Added
- `/brainstorm` workflow - Discovery phase for idea exploration & market research
- `/next` workflow - Anti-stuck guide, suggests next steps
- `docs/USER_GUIDE.md` - Comprehensive guide for 3 usage scenarios
- `docs/visualization/index.html` - Interactive web page for non-tech users
- Golden Rules in `/code` to prevent agent from doing unauthorized actions
- Detailed info gathering phase in `/visualize`

### Improved
- `/plan` workflow - Simplified for non-tech users, uses everyday language
- README.md - Now includes beginner-friendly documentation
- Command list organized by category

### New Features for Beginners
- Market research capability in /brainstorm
- MVP prioritization guidance
- Step-by-step workflow visualization
- "When stuck" help section

---

## [3.1.0] - 2026-01-16

### Added
- Version tracking system (`VERSION` file)
- `/awf-update` workflow for checking and installing updates
- Auto-update notification in GEMINI.md
- Explicit command mapping in GEMINI.md (fixes "no such file" error)

### Fixed
- Fixed `/recap` and other commands being interpreted as file paths
- Improved GEMINI.md instructions for better AI understanding

---

## [3.0.0] - 2026-01-15

### Added
- 14 Global Workflows for AI Engineering
- Bilingual support (English/Vietnamese)
- Numbered menu system for Next Steps
- "Fix All" option in `/audit` workflow

### Workflows
- `/init` - Project Initializer
- `/plan` - Product Architect
- `/visualize` - Creative Director
- `/code` - Senior Developer
- `/run` - Application Launcher
- `/test` - QA Engineer
- `/debug` - Detective
- `/refactor` - Code Gardener
- `/audit` - Code Doctor
- `/deploy` - DevOps/Release Manager
- `/rollback` - Emergency Responder
- `/save-brain` - Librarian/Memory Keeper
- `/recap` - Historian
- `/cloudflare-tunnel` - Admin
