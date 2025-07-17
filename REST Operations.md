---
languageOrFramework: REST
topicName: Operations
status: exploring
date: 2025-07-07
publish: true
tags:
  - rest
  - spring
  - tag-trek
---

# REST Operations
- GET
    - CRUD read
    - Retrieves 1+ resources
    - Idempotent
- POST
    - CRUD create
    - Create new resource
    - __Not__ idempotent  - POST 2x may be 2x new
- PUT 
    - CRUD update
    - Entirely replace resource
    - idempotent
- PATCH
    - CRUD update
    - Partial resource update
    - idempotent
- DELETE
    - Crud delete
    - Remove resource
    - Idempotent

