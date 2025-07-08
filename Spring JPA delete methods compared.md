---
languageOrFramework: Spring
version: undefined
topicName: JPA delete methods compared
status: exploring
date: 2025-07-07
publish: true
tags:
  - spring
  - jpa
  - tag-trek
---
# Spring JPA delete methods compared


| Method                                       | Loads Entities | Triggers Callbacks | Uses Batch SQL | Deletes By ID |
| ---------------------------------------------| -------------- | ------------------ | -------------- | ------------- |
| `deleteAll()`                                | ✅ Yes         | ✅ Yes             | ❌ No         | ❌ No        |
| `deleteAllInBatch()`                         | ❌ No          | ❌ No              | ✅ Yes        | ❌ No        |
| `deleteAllById(ID id)`                       | ✅ Yes         | ✅ Yes             | ❌ No         | ✅ Yes       |
| `deleteAllByIdInBatch(Iterable<ID> ids)`     | ❌ No          | ❌ No              | ✅ Yes        | ✅ Yes       |