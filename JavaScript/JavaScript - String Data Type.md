---
languageOrFramework: JavaScript
version: undefined
topicName: String Data Type
status: exploring
date: 2025-07-13
publish: true
tags:
  - javascript
  - certification
  - tag-trek
  - data-type
---
# JavaScript String Data Type
## Overview
A **string** is a sequence of characters enclosed in single or double quotes.  Strings are one of JavaScript’s **primitive data types**.
- They are **immutable**: operations on strings return new strings
- They represent human-readable text  (e.g., `"Hello"`, `'world'`)
## Quotes
- Strings can be written with **single** or **double** quotes.
- You can include quotes inside a string if they differ from the surrounding quotes.
```javascript
let a = "It's fine";
let b = 'He said "Hello"';
```
## Escape Sequences
- Use `\` to escape quote characters:
```javascript
let quote = 'He said, "It\'s working."';
let quote2 = "He said, \"It's working.\"";
```
## Notes
- Strings are zero-based character arrays in behavior (e.g., `str[0]`).
- JavaScript automatically converts numbers to strings when using the `+` for concatenation.
## `typeof` Usage
Use the `typeof` operator to check the type of a string.
```javascript
typeof "Hello"; // "string"
``` 