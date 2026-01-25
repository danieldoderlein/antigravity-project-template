---
description: Run this workflow to set up a new project
---

# Project Initialization

Purpose: generate the correct project files for this repo and ask me only what you need.

## Step 1, Read PROJECT.md and decide what is missing
If any of these are unclear, ask:
- Exact stack and framework (example: Next.js App Router with TypeScript).
- Package manager (npm, pnpm, yarn).
- Local dev command (dev server).
- Build command.
- Lint and formatting choice (use common defaults if I do not care).
- Test approach (none for placeholder sites is acceptable, but confirm).
- External services needed (example: Google Sheets, email provider).

## Step 2, Generate or update these files
Create or update, based on the chosen stack:
- README.md (how to run, how to check, how to deploy)
- .gitignore
- .editorconfig
- .env.example (only if external services exist)
- scripts/bootstrap.sh
- scripts/check.sh

Rules:
- Prefer widely used defaults for the stack.
- Keep scripts short and readable.
- Do not commit secrets.
- Mention chmod if you create scripts.

## Step 3, Verify
After generating, provide:
- The exact commands I should run locally, in order.
- A short checklist of any manual steps outside the repo (accounts, keys, domain verification).

## Default assumptions (use only if I don't specify)
- Prefer TypeScript for JS projects.
- Prefer npm unless I say otherwise.
- Placeholder sites may skip tests, but must build.
