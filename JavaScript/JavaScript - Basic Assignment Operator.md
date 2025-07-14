---
languageOrFramework: JavaScript
version: undefined
topicName: Basic Assignment Operator
status: exploring
date: 2025-07-12
publish: true
tags:
  - javascript
  - assignment
  - operator
  - tag-trek

---
# JavaScript Basic Assignment Operator
- `=`: assignment operator (not equality check)
    - Assigns right-hand value to left-hand variable
## Syntax
```javascript
let x = 5;
let y = x;
```
## Notes
    - The left side must be something assignable:
        - variable
        - object property
- The right side can be any expression, including another assignment
```javascript
let x = 2;
let y = x = 10; // x becomes 10, y also becomes 10
```
## Related 