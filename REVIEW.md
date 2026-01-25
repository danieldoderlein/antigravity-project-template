# Antigravity Template Review

This document outlines the findings from a review of the current project template against Antigravity best practices and documentation.

## Critical Issues

### 1. Broken Reference in `AGENTS.md`
- **File**: `AGENTS.md`
- **Issue**: Line 17 refers to `.agent/rules/is-it-done.md`.
- **Reality**: The actual file is named `.agent/rules/definition-of-done.md`.
- **Action**: Update `AGENTS.md` to reference the correct filename.

## Structural Improvements

### 2. Skill Directory Naming
- **File**: `.agent/skills/example-skill/`
- **Issue**: The directory name `example-skill` implies a placeholder, but the content (`SKILL.md`) defines a specific `code-review` skill.
- **Best Practice**: Skill directory names should match the `name` defined in `SKILL.md` for clarity and auto-discovery.
- **Action**: Rename directory `.agent/skills/example-skill` to `.agent/skills/code-review`.

## Proposed Additions

### 3. Missing Workflows
Based on `rules-workflows` documentation, workflows should cover common complex tasks.
- **Proposal**: Add `.agent/workflows/deployment.md`.
  - *Purpose*: Define steps to deploy the application (e.g., Vercel, Docker).
  - *Content*: Template steps for building, setting env vars, and verifying deployment.
- **Proposal**: Add `.agent/workflows/test.md`.
  - *Purpose*: Standardize the testing loop.

### 4. Missing Rules
Rules govern the agent's behavior.
- **Proposal**: Add `.agent/rules/tech-stack.md`.
  - *Purpose*: Define allowed libraries and frameworks to prevent "stack drift".
- **Proposal**: Add `.agent/rules/communication.md`.
  - *Purpose*: Define how the agent should format PRs or commit messages (if not in AGENTS.md).

## Content Refinements

### 5. `AGENTS.md` Clarity
- **Observation**: `AGENTS.md` is the entry point.
- **Action**: Add a specific link section for "Available Workflows" and "Available Skills" so the agent can self-discover capabilities by reading this single file.

### 6. `scripts/` Robustness
- **Observation**: Scripts are echoes.
- **Action**: Add comments in `bootstrap.sh` recommending `npm ci` over `npm install` for deterministic builds.
