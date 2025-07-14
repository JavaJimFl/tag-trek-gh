---
languageOrFramework: JavaScript
version: undefined
topicName: NaN
status: exploring
date: 2025-07-13
publish: true
tags:
  - javascript
  - certification
  - tag-trek
  - data-type
---
# JavaScript - NaN (Not a number)

## Overview
`NaN` stands for **"Not-a-Number"** and is a special value of type `"number"`. It represents the result of an **invalid numeric operation**.

## Examples
```javascript
let x = 100 / "Apple";     // NaN
let y = Math.sqrt(-1);     // NaN
parseInt("Hello");         // NaN
```

## Behavior
- `typeof NaN` is `"number"` (quirk)
- `NaN !== NaN` — NaN is **not equal to itself**
- Use `Number.isNaN()` instead of `isNaN()` for accurate checks

## `NaN` Checks 

### Loose Check (`isNaN()`)
- Global JavaScript function (same as `window.isNaN()` in the browser)
- Performs implicit type conversion before testing
- Misleading because it returns `true` for non-NaN values after coercion
```javascript
isNaN("hello"); // true ❌ — it's not NaN, it's a string
isNaN(undefined); // true ❌ — coerced to NaN
isNaN({}); // true ❌ — also coerced to NaN
isNaN(NaN)// true ✅ - this is actually NaN
```

### Strict Check (`Number.isNaN()`)
- Returns true _only if_ the value is actually `NaN`
- No coercion:
```javascript
Number.isNaN("hello"); // false ✅
Number.isNaN(NaN);   // true ✅
Number.isNaN(100 / 10); // false ✅
``` 

## typeof Usage

```javascript
typeof NaN; // "number"`
```
