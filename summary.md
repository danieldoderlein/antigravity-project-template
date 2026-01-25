# 📂 Project Structure & Content Summary

This repository is a **Project Template** designed to bootstrap new Antigravity projects with a standardized agent configuration. Here is the breakdown of the current files and their purpose:

#### **Root Configuration**
| File | Purpose | Key Content |
| :--- | :--- | :--- |
| **`AGENTS.md`** | **Entry Point** | The agent's "Instruction Manual". Lists capabilities (workflows/skills), operating rules, and safety guidelines. **Updated** to include new capabilities. |
| **`PROJECT.md`** | **Context** | Single source of truth for Project Name, Stack, Constraints, and Architecture decisions. |
| **`README.md`** | **Documentation** | Standard instruction file for developers (Setup, Development, Deployment). |
| **`REVIEW.md`** | **Audit Log** | (Temporary) A detailed review of this template against Antigravity docs, outlining the improvements made. |
| **`LICENSE`** | **Legal** | Placeholder license file. |

#### **Agent Configuration (`.agent/`)**
This folder contains the "brain" of the project, defining how the agent behaves.

**1. Workflows (`.agent/workflows/`)**
*   **`project-initialization.md`**: A checklist for correctly setting up a *new* project from this template (stacks, packages, etc.).
*   **`feature-development.md`**: **(New)** Specifies the standard lifecycle for building features: Plan → Implement → Verify → Document.

**2. Rules (`.agent/rules/`)**
*   **`definition-of-done.md`**: The strict criteria a task must meet to be considered complete (must run locally, pass checks, no secrets).
*   **`tech-stack.md`**: **(New)** Rules to prevent "Stack Drift". Mandates using existing libraries and correct file placement.

**3. Skills (`.agent/skills/`)**
*   **`code-review/SKILL.md`**: A specialized module containing a checklist and best practices for performing code reviews (Correctness, Edge Cases, Style).

#### **Scripts (`scripts/`)**
Helper scripts intended to provide a uniform interface for the agent regardless of the underlying stack.
*   **`bootstrap.sh`**: Placeholder for project setup (e.g., `npm install`).
*   **`check.sh`**: Placeholder for verification (e.g., `npm test`, linting).

#### **Tooling Config**
*   **`.editorconfig`**: Enforces consistent coding styles (indentation, charset) across editors.
*   **`.gitignore`**: Standard ignores for Node/JS/Python environments.
