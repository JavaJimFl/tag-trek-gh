---
languageOrFramework: JavaScript
version: undefined
topicName: "String Concatenation and Conversion"
status: exploring
date: 2025-07-14
publish: true
tags:
  - javascript
  - certification
  - tag-trek
---

# JavaScript - String Concatenation and Conversion

## Overview

## `+`
- **Concatenates** two strings.
- If **either operand is a string**, JavaScript **coerces the other** to a string.
- Operates left to right — so coercion depends on order.

## `concat`
- Joins two or more strings together.
- Returns a **new string** (does not mutate the original).

## `String()`
- Converts **any value** to its string representation.
- This is a **global function**, not a method on a string.
- 
## `toString()`
- Calls an object’s **`.toString()` method**.
- Throws an error if the value is `null` or `undefined`.
- Some objects (like arrays, dates, or custom objects) may override it.
- 
## Examples
```javascript
const num = 42;
const msg = "Answer: " + num;              // "Answer: 42"

const joined = "Hello".concat(", ", "Jim"); // "Hello, Jim"

console.log(String(false));                // "false"
console.log((123).toString());             // "123"
console.log(null + "");                    // "null"
console.log(undefined + "");               // "undefined"
```

## Notes
- Use `String()` for **safe conversion** when you’re not sure about the value type.
- Avoid `toString()` on unknown values — it throws if the value is `null` or `undefined`.
- Concatenation using `+` is more idiomatic than `concat()` in most JS code.
- Be cautious with `"value" + object` — JavaScript may fall back to `[object Object]`.

## Related
- [[JavaScript - String Templates]]
- [[JavaScript - String Data Type]]
- [[JavaScript - Type Conversion]]
- [[JavaScript - Operators]]
