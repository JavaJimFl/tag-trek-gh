---
course: W3c Schools JavaScript Tutorial
lesson: 05
title: Syntax
status: done
publish: true
tags:
  - w3c-schools-javascript-tutorial
  - lesson
  - javascript
  - certification
  - tag-trek
---

# JavaScript Syntax
- Set of rules for writing JS code
### 🔢 JavaScript Values
- **Literals**
    - Fixed values
        - Numbers
            - With or without decimals
                - `10.5`
                - `999,
        - Strings
            - Within single or double quotes
                - `'John'`
                - `"John"`
- **Variables**
    - Named containers for values
    - Declared with: `var`, `let`, `const`
    - Assigned using `=`
    - Can store numbers, strings, etc.

---

### ➕ Operators

- **Arithmetic:**
    - `+`
    -  `-`
    - `*`
    -  `/`
    
- **Assignment:** 
    - `=`

---

### 🧮 Expressions

- Combine
    - Values
    - Variables
    - Operators
- Compute to a single value

---

### 🔑 Keywords

- Identify performable actions
    - `let` → create variable
    - `var` → create variable

---

### 💬 Comments
- [W3C Schools JavaScript Tutorial Lesson 06 - Comments](W3C%20Schools%20JavaScript%20Tutorial%20Lesson%2006%20-%20Comments.md)

---

### 🏷️ JS Identifiers (names)
- Used to name
    - Variables
    - Functions
    - Keywords
- Must start with:
    - Letter (`a-z`, `A-Z`)
    - Underscore (`_`)
    - Dollar sign (`$`)
- Cannot start
    - Digit
        - Allows JS distinguish between:
            - identifiers
            - numbers
    - Hyphen
        - Not allowed in JS
        - Reserved for subtraction
- Case-sensitive: `lastName` ≠ `lastname`

---

### 🐫 Naming Conventions
#### ❌ Not Allowed
- Hyphenated names (hyphen-case)
    - Reserved for subtraction
    - e.g., `first-name`
#### ✅ Common Styles
- SnakeCase
    - Words separated by underscores
        - `first_name`
    -  UPPER_SNAKE_CASE for constants
        - `FIRST_NAME`
- PascalCase/UpperCamelCase 
    -  All words separated by capital letters
    - `FirstName`
- lowerCamelCase
    - All words but first separated by capital letters
    - `firstName` ← _preferred in JS_

---

### 🌐 JS Character Set
- Unicode (UTF-8)
- Supports global characters, symbols, punctuation