---
date: 2025-07-15
publish: true
tags:
  - javascript
  - certification
  - flash-cards
  - tag-trek
---
TARGET DECK: JavaScript::Basics::Assignment

START
Basic
What does the `=` operator do in JavaScript?
Back: It **assigns** the value of the right‑hand expression to the left‑hand variable or property (it is **not** an equality comparison).
Tags: js assignment operator basics
<!--ID: 1752618771594-->
END

START
Basic
Is the `=` operator an equality check in JavaScript?
Back: No. Equality checks use `==` (loose) or `===` (strict); `=` is only for **assignment**.
Tags: js assignment operator equality
<!--ID: 1752618771596-->
END

START
Basic
What is the value of `y` after this code?
```javascript
let x = 5;
let y = x;
```
Back: `y` is **5** — the value stored in `x` was assigned to `y`.
Tags: js assignment example basics
<!--ID: 1752618771597-->
END

START
Basic
After this code executes, what are the values of `x` and `y`?
```javascript
let x = 2;
let y = x = 10;
```
Back: Both **x = 10** and **y = 10**. The assignment expression `x = 10` returns `10`, which is then assigned to `y`.
Tags: js assignment expression chain
<!--ID: 1752618771598-->
END

START
Cloze
<pre>let x = 2;
let y = {{c1::x = 10}}; // x and y now {{c2::10}}
</pre>
Tags: js assignment cloze
<!--ID: 1752618771599-->
END
