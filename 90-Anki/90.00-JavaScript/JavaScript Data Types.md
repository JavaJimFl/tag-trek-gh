---
date: 2025-07-15
publish: true
tags:
  - javascript
  - certification
  - flash-cards
  - tag-trek
---
TARGET DECK: JavaScript::Basics::BigInt

START
Basic
What primitive type introduced in ES2020 allows JavaScript to represent arbitrarily large integers?
Back: **BigInt** — a new primitive separate from the `number` type.
Tags: js bigint overview
<!--ID: 1752619646639-->
END

START
Basic
Why was BigInt added to JavaScript?
Back: Because the 64‑bit floating‑point `number` type can only safely represent integers up to 2^53 − 1; larger integers lose precision.
Tags: js bigint motivation precision
<!--ID: 1752619646640-->
END

START
Basic
Write a BigInt literal for the value 123.
Back: <code>123n</code>  (the trailing <code>n</code> marks it as BigInt).
Tags: js bigint literal syntax
<!--ID: 1752619646641-->
END

START
Basic
Which function converts strings or expression results into BigInt?
Back: <code>BigInt()</code>, e.g. <code>BigInt("12345678901234567890")</code>
Tags: js bigint constructor
<!--ID: 1752619646642-->
END

START
Basic
What error occurs when you evaluate <code>123 + 123n</code>?
Back: ❌ TypeError: Cannot mix BigInt and other types without explicit conversion.
Tags: js bigint typeerror mixing
<!--ID: 1752619646643-->
END

START
Basic
Show a correct way to add a numeric 123 to a BigInt 123n.
Back: Either convert the number: <code>BigInt(123) + 123n</code> or convert the BigInt: <code>Number(123n) + 123</code> (but may lose precision).
Tags: js bigint conversion
<!--ID: 1752619646644-->
END

START
Basic
Why does <code>123.45n</code> throw a syntax error?
Back: BigInt literals must be integers; decimals are not allowed. Round or truncate first, e.g. <code>BigInt(Math.floor(123.45))</code>.
Tags: js bigint integer syntaxerror
<!--ID: 1752619646645-->
END

START
Basic
What risk do you face when converting a huge BigInt to Number()?
Back: Precision can be silently lost or truncated because `number` cannot represent very large integers exactly.
Tags: js bigint precision loss
<!--ID: 1752619646646-->
END

START
Cloze
<pre>
typeof 123            // "{{c1::number}}"
typeof 123n           // "{{c2::bigint}}"
typeof BigInt(123)    // "{{c3::bigint}}"
</pre>
Tags: js bigint typeof cloze
<!--ID: 1752619646647-->
END