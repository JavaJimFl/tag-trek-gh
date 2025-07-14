---
languageOrFramework: JavaScript
version: undefined
topicName: Differences - let, var, const
status: exploring
date: 2025-07-09
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