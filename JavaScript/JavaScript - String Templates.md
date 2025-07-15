---
languageOrFramework: JavaScript
version: undefined
topicName: "String Templates"
status: exploring
date: 2025-07-14
publish: true
tags:
  - javascript
  - certification
  - tag-trek
---

# JavaScript - String Templates

## Overview
- Enclosed in back-ticks `` `...` ``, known as **template literals** ES6 (JavaScript 2016).
- Support multi-line text:
```javascript
let multi = `Line 1
Line 2`;
```
- Allow interpolation with `${}`:
```javascript
let name = "Jim";
let age = 30;

`Hello ${name}, you are ${age} years old`;
```

## Examples
```javascript
const product = "laptop";
const price = 999;
console.log(`The ${product} costs $${price}.`);
```

## Notes
- Template literals preserve whitespace and line breaks.
- Great for dynamic strings like URLs, HTML snippets, or logging.
- Avoid overusing for simple static strings — regular quotes may be clearer.

## Related
[[JavaScript - String Quotes]]
[[JavaScript - String Data Type]]
