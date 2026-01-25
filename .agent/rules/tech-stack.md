---
trigger: always_on
---

# Tech Stack & Constraints Rules

## strictly_enforced
1. **No "Stack Drift"**: Do not install new libraries or frameworks without explicit user permission.
   - If the project uses `npm`, do not use `yarn` or `pnpm`.
   - If the project uses `React`, do not introduce `Vue` or `Svelte` components.
2. **File Placement**:
   - All source code must reside in the directories defined by the project structure (e.g., `src/`, `app/`, `lib/`).
   - Do not create files in the root directory unless they are configuration files.
3. **Styling**:
   - Follow the existing styling paradigm (e.g., if Tailwind is used, use utility classes; if CSS Modules are used, use `.module.css`).

## preferred
1. **Standard Libraries**: Prefer language standard libraries over external packages for simple tasks (e.g., use native `fetch` instead of `axios` if not already present).
