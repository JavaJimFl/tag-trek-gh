---
languageOrFramework: JavaScript
version: undefined
topicName: Assignment Operator
status: exploring
date: 2025-07-10
publish: true
tags:
  - javascript
  - certification
  - tag-trek

---
# JavaScript Assignment Operators
## Overview
- Used to assign values to variables
## Basic Assignment 
- `=`: assignment operator (not equality check)
    - Assigns right-hand value to left-hand variable
- Example:
```javascript
let x = 10;
```
## Compound Assignment
- Combine operations with assignment
- Perform arithmetic operation and reassign result
    - `+=`: `x = x + y`
    - `−=`: `x = x - y` 
    - `*=`: `x = x * y`
    - `/=`: `x = x / y`
    - `%=`: `x = x % y`
    - `**=`: `x = x ** y`
## Destructuring Assignment
- A special form/subtype of assignment
- Assigns values from arrays or objects to variables
- Done in a single expression
- `const [a, b] = [1, 2];`
- `const {name, age} = person;`
## Chained Assignment
- Assign single value to multiple variables
```javascript
   let a, b, c; 
   a = b = c = 5;
```
- Avoid if reduces clarity
