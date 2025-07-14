---
languageOrFramework: JavaScript
version: undefined
topicName: Variable Scope
status: exploring
date: 2025-07-09
publish: true
tags:
  - 
  - spring
  - tag-trek
---

## Scope History
### Global Scope (Pre-ES6)
- Global: if top level
- Function: declared within function
- Declaration doesn't respect block boundaries
- Accessible outside block if declared inside
    
  
### Block Scope ES6 (2015)  
- Introduced block scope
    - Block-scoped variables
        - `let`
        - `const`
    - Variables in `{}` block not accessible outside  
    - Must be declared before use
    - Can't be redeclared in same block
    - Redeclaration in separate blocks is allowed