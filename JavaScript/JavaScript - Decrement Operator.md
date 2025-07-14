---
languageOrFramework: JavaScript
version: undefined
topicName: Decrement Operator
status: exploring
date: 2025-07-10
publish: true
tags:
  - javascript
  - certification
  - tag-trek
---

# Decrement Operator
## Overview
- The decrement operator (`--`) subtracts 1 from a variable.
- Can be used as a prefix (`--x`) or postfix (`x--`).
- Operator position affects when the decrement happens:
    - `--x` (prefix): decrements first, then returns the new value
    - `x--` (postfix): returns original value, then decrements
## Examples:
```javascript
let x = 5;

let pre = --x;  // pre = 4, x = 4
let post = x--; // post = 4, x = 3
```
