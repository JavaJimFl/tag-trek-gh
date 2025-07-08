---
languageOrFramework: Spring
version: undefined
topicName: @Transactional
status: exploring
date: 2025-07-07
publish: true
tags:
  - spring
  - jpa
  - transaction
  - tag-trek
---
# Spring @Transactional
## What is it?
- Manages DB transactions declaratively
- All operations within it one UOW
    - Fully completed on success
    - Fully rolled back on failure
## What it does
1. Begins txn before method starts
2. Commits the txn if method successful
3. Rolls back the txn if runtime exception thrown
- Can be applied at class or method level
## Common use cases
- Wrapping multiple DB operations must succeed or fail as one
- Ensuring consistency when updating multiple entities or tables
- Managing JPA lazy-loading behavior (e.g., fetching associations)
## Configuration options
-  `propagation`
- `isolation`
- `readOnly`
    - Prevents accidental writes
    - Performance optimization
    - Skips dirty checking in Hibernate
- `timeout`
- `rollbackFor`
- `noRollbackFor`
## Best practices
- Apply at service layer, not repository layer
- Avoid using private methods - Spring AOP proxies won't intercept
- Cautious with self-invocation
    - Is calling method in same class
    - Will bypass the proxy