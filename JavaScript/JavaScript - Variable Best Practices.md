---
languageOrFramework: JavaScript
version: undefined
topicName: Variable Best Practices
status: exploring
date: 2025-07-09
publish: true
tags:
  - Javascript
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