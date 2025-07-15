---
date: 2025-07-15
publish: true
tags:
  - javascript
  - certification
  - flash-cards
  - tag-trek
---
TARGET DECK: JavaScript::Basics::Operators

START
Basic
What does the `+` operator do in JavaScript?
Back: It either adds numbers or concatenates strings, depending on the operand types.
Tags: js addition operators
<!--ID: 1752617197698-->
END

START
Basic
How does JavaScript decide whether `+` performs addition or concatenation?
Back: If either operand is a **string**, JavaScript coerces the other to a string and concatenates; otherwise, it performs numeric addition.
Tags: js addition coercion
<!--ID: 1752617197699-->
END

START
Basic
What is the value of `z` after this code?
```javascript
let x = 5;
let y = 2;
let z = x + y;
```
Back: 7 — numeric addition of 5 and 2.
Tags: js addition numeric
<!--ID: 1752617197700-->
END

START
Basic
What is the value of `greeting` after this code?
```javascript
let name = "Jim";
let greeting = "Hello, " + name;
```
Back: "Hello, Jim" — the `+` operator concatenates the strings.
Tags: js addition string
<!--ID: 1752617197701-->
END

START
Cloze
<pre>
let name = "Jim";
let greeting = {{c1::"Hello, "}} + {{c2::name}}; // → {{c3::"Hello, Jim"}}
</pre>
Tags: js addition cloze
<!--ID: 1752617197702-->
END