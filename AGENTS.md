# Agent Instructions (Antigravity Project Template)

Goal: ship production-quality work with minimal ceremony.

## Mandatory first step for every new project
If this repo was created by copying the template, do this BEFORE any coding:
1. Read PROJECT.md.
2. Run the Project Initialization workflow located in: .agent/workflows/project-initialization.md.
3. Only after initialization is complete, start implementation work.

## Operating rules
- If the task is more than a tiny change, write a short plan (5 to 10 bullets) before editing files.
- Implement in small, reversible steps.
- Prefer simple solutions that are easy to maintain.

## Definition of done
A task is done only when it satisfies the rule as defined in: .agent/rules/definition-of-done.md

## Secrets and external accounts
When external services are required:
- Do not invent IDs, keys, domains, or settings.
- Use env var placeholders and create .env.example.
- Provide a short checklist of manual steps outside the codebase.
- Ask only for the minimum missing info.

## Safety
- Do not run destructive commands (rm -rf, disk tools, recursive deletes).
- Only modify files inside this repo unless PROJECT.md explicitly allows otherwise.
- If a command could delete data or incur cost, stop and ask first.

## Communication
- State assumptions when needed.
- Provide concrete file paths and exact commands.
- Keep responses short and practical.
