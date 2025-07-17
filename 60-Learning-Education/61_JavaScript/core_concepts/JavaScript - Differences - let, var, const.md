---
title: JavaScript - Differences - let, var, const
language: JavaScript
type: technical
created: 2025-07-09
updated: 2025-07-09
publish: true
tags:
  - 
  - spring
  - tag-trek
---

|       | Scope     | Redeclare | Reassign | Hoisted    | Binds this |
| ----- | --------- | --------- | -------- | ---------- | ---------- |
| var   | ❌ No     | ✅ Yes    | ✅ Yes   | ✅ Yes     | ✅ Yes     |
| let   | ✅ Yes    | ❌ No     | ✅ Yes   | ❌ No      | ❌ No      |
| const | ✅ Yes    | ❌No      | ❌ No    | ❌ No      | ❌ No      |