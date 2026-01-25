---
description: Standard workflow for implementing a new feature or task.
---

# Feature Development Workflow

## Step 1: Plan
1. Read `PROJECT.md` to understand the core constraints and technology stack.
2. Read `.agent/rules/tech-stack.md` (if it exists) to ensure no unauthorized libraries are used.
3. Create a short implementation plan in the chat or a scratchpad file.
   - List the files you will modify.
   - List the new components or functions you will create.

## Step 2: Implement
1. Write the code.
2. **Crucial**: Ensure all new files are strictly within the allowed directories.
3. If new dependencies are needed, ask the user for permission *before* installing.

## Step 3: Verify
1. Run `./scripts/check.sh` to ensure no regressions.
2. If there are errors, fix them before marking the task as done.
3. Review `.agent/rules/definition-of-done.md`.
   - Does it run locally?
   - Are secrets protected?

## Step 4: Finalize
1. Update `README.md` if the usage instructions have changed.
2. Report "Task Complete" to the user with a summary of changes.
