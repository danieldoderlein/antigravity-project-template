# Antigravity Template Review & Proposal

## 1. Executive Summary
This project template has been reviewed against the Antigravity documentation for **Rules**, **Workflows**, and **Skills**.
**Status**: The current structure is **Compliant** with basic requirements, but **Incomplete** regarding best practices for a robust, production-ready template.

## 2. Compliance Verification
| Component | Status | Notes |
|-----------|--------|-------|
| **Folder Structure** | ✅ Pass | `.agent/rules`, `.agent/workflows`, `.agent/skills` are correctly placed. |
| **Skill Definition** | ✅ Pass | `code-review` skill now correctly matches folder name and contains required frontmatter. |
| **Project Context** | ✅ Pass | `PROJECT.md` and `AGENTS.md` provide necessary context. |

## 3. Proposal: Missing Core Components

### 3.1. Workflows (`.agent/workflows/`)
The current template has `project-initialization`, which is excellent for setup, but lacks workflows for the *development loop*.

*   **Proposal A: Add `feature-development.md`**
    *   *Why*: To guide the agent through the standard lifecycle: Plan -> Implement -> Verify -> Document.
    *   *Content*: Steps that force the agent to read `PROJECT.md`, check `definition-of-done.md`, and run `scripts/check.sh` before reporting completion.
*   **Proposal B: Add `deployment.md`**
    *   *Why*: To capture the critical path of shipping code.
    *   *Content*: Steps to build, verify environment variables, and trigger release (manual or automated).

### 3.2. Rules (`.agent/rules/`)
Current rules are minimal. To prevent "drift" (agent inventing new patterns), we need explicit constraints.

*   **Proposal C: Add `tech-stack.md` (Trigger: `always_on`)**
    *   *Why*: Agents often default to standard libraries that might not match the specific project choices (e.g., using `fetch` vs `axios`).
    *   *Content*: "Refusal to use libraries not listed in `package.json` unless explicitly requested."
*   **Proposal D: Add `style-guide.md` (Trigger: `model_decision` or `glob`)**
    *   *Why*: To enforce coding styles (naming conventions, file organization) that linters can't catch.

### 3.3. Skills (`.agent/skills/`)
The `code-review` skill is a good text-based example. The template is missing an example of a **Script-Backed Skill**, which is a powerful feature mentioned in the docs.

*   **Proposal E: Add `scaffold-component` Skill**
    *   *Structure*: `.agent/skills/scaffold-component/` containing `SKILL.md` and `scripts/generate.sh`.
    *   *Why*: Demonstrates how an agent can use existing scripts to perform reliable code generation rather than writing files effectively "by hand" every time.

## 4. Content Improvements

### 4.1. `AGENTS.md` Optimization
*   **Update**: Add a section "Capabilities" that explicitly lists the available workflows (e.g., "Run `/project-initialization` to start") and skills. This acts as a menu for the agent.

### 4.2. `PROJECT.md` Refinement
*   **Update**: Add an "Architecture & Key Decisions" section. This allows the agent to record high-level decisions (e.g., "We are using Server Components") that future sessions must respect.

## 5. Implementation Plan
1.  **Create** `feature-development.md` workflow.
2.  **Create** `tech-stack.md` rule.
3.  **Update** `AGENTS.md` to reference these new capabilities.
