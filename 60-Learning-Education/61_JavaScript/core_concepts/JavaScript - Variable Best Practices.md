---
title: JavaScript - Variable Best Practices
language: JavaScript
type: technical
created: 2025-07-09
updated: 2025-07-09
publish: true
tags:
  - Javascript
  - core_concepts
  - learning
  - tag-trek
---

# Variable best practices
- ✅ Prefer `let` or `const`
    - ✅ Use `const` when value shouldn't change
    - ❌ Avoid `var` to prevent:
        - Implicit globals
        - Accidental redeclarations
        - Block scope violations
        - Hoisting confusion