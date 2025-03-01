# GitHub Branching Strategy

This document provides detailed guidance on our Git branching strategy for the Bradley Goetsch personal website project, including when and how to create branches.

## When to Create Branches

### 1️⃣ Initial Setup (Before Development Starts)
- **📌 When?** Right after setting up the repository and pushing the initial commit.
- **✅ Actions:**  
  - Create the **`main`** (or `master`) branch.
  - Create the **`develop`** branch if following a Git Flow approach.
  - Set up **branch protections** on `main` (e.g., requiring PR reviews).

### 2️⃣ When Features Need Development
- **📌 When?** As soon as specific tasks or features are planned.
- **✅ Actions:**  
  - Create **feature branches** (`feature/frontend`, `feature/backend`, etc.).
  - Developers work on their respective branches.
  - Merge into `develop` (or `main` in smaller projects) after testing.

### 3️⃣ When Fixes or Patches Are Needed
- **📌 When?** If a bug or security vulnerability is found.
- **✅ Actions:**  
  - Create **`hotfix/`** branches for critical fixes (merge into `main` ASAP).
  - Create **`bugfix/`** branches for non-critical fixes (merge into `develop` first).

### 4️⃣ When Preparing for a Release
- **📌 When?** When a stable version is ready for final testing.
- **✅ Actions:**  
  - Create a **`release/X.X.X`** branch.
  - Finalize testing and documentation.
  - Merge into `main` when production-ready.

### 5️⃣ When Experimenting with New Ideas
- **📌 When?** When testing new concepts without impacting the main workflow.
- **✅ Actions:**  
  - Create a **`test/`** branch for prototypes and experimental changes.
  - If successful, merge into a feature branch or `develop`.

## Branches to Use
- **Main Branches:**
  - **`main`** → Stable production-ready code.
  - **`develop`** → Integration branch where features are tested before merging into `main`.

- **Feature Branches:**
  - **`feature/frontend`** → UI development, Tailwind CSS, JavaScript.
  - **`feature/backend`** → API integrations, Hugo templates.
  - **`feature/security`** → Security improvements, audits.
  - **`feature/content`** → Blog updates, metadata, SEO.
  - **`feature/automation`** → CI/CD pipelines, deployment scripts.

- **Support Branches:**
  - **`hotfix/security`** → Urgent security fixes.
  - **`bugfix/`** → For fixing non-critical bugs.
  - **`test/`** → For experimenting with changes not related to a specific issue.

- **Release Branches:**
  - **`release/X.X.X`** → Versioned releases.

## Merge Process
1. **Feature branches → `develop`** → Tested & reviewed.
2. **`develop` → `main`** → Only stable, production-ready code.
3. **Hotfixes** (critical issues) → Directly merged into `main`.

---

For the complete development workflow including team roles, CI/CD setup, and more, see [DEVELOPMENT_WORKFLOW.md](DEVELOPMENT_WORKFLOW.md).
