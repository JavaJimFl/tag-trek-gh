---
languageOrFramework: Spring JPA
topicName: Repositories
status: exploring
date: 2025-07-07
publish: true
tags:
  - spring
  - repository
  - exception
  - tag-trek
---
# Spring JPA Repositories
- Fail fast on error
- Expose common CRUD method
    - `save()`/`saveAll()`
        - Normal behavior
            - Insert if ID `null`/missing
            - Update if ID exists
        - Exceptions
            - `DataIntegrityViolationException`
                - Constraint violation
                - Duplicate key
                - Null in `@NotNull` Entity property
            - `TransactionRequiredException`
                - No active transaction
            - `OptimisticLockException`
                - Version mismatch
    - `findbyId(ID)`
        - Normal behavior
            - Return `Optional<T>`
            - `Optional.empty()` nothing found
        - Exceptions
            - None, unless database
                - Failure
                - crash
    - `findAllbyId(Iterable<ID> ids)`
        - Normal behavior
            - Return list of found entities
            - Order not guaranteed
            - Missing entities skipped
        -  Exceptions
            - None, unless database
                - Failure
                - crash
    - `getById()` / `getReferenceById()`
        - Common features
            - Require valid entity class and ID
            - Return lazy proxy ("reference")
            - Both assume entity exists
            - May throw `EntityNotFoundException` if accessed and entity missing
        - `getById()` (pre-Spring 2.5)
            - Direct mapping to `EntityManager.getReference()`
            - Returns lazy proxy [Spring Reference](Spring%20Reference.md)
            - Throws late if ID not found
            - less explicit that `getReferenceById()`
            - Annotated by Spring as [Transactional(readOnly = true)](Spring%20@Transactional.md)
                - read-only
                - Spring auto-propagates context
            - May throw `LazyInitializationException` if outside transaction
                - Annotate calling method as `@Transactional`
        - `getReferenceById()` (Spring 2.5+)
            - More explicit reference
            - Replaces `getById()` in newer code
            - Returns [lazy proxy](<lazy proxy [Spring Reference](Spring%20Reference.md)>)
            - Same deferred fetch behavior
            - Direct mapping to `EntityManager.getReference(Class<T>, ID)`
    - `delete(T entity)`
        - Purpose: deletes a specific entity
        - Behavior
            - Requires the entity to be either
                - Managed
                - Attached to the persistence context
        - Use case:  Delete entity we already have
    - `deleteById(ID id)`
        - Purpose:  delete entity by its primary key
        - Behavior: deletes internally fetched reference
        - Exception
            `EmptyResultDataAccessException` if entity w/ ID doesn't exist
            `DataIntegrityConstraint` if FK constraint fails
        - Use case: Only entity ID available
    - `deleteAll()`
        - Purpose: deletes all repository entities
        - Behavior 
            - issues individual deletes each entity
            - Triggers lifecycle callbacks like `@PreRemove`
            - Loads each entity into memory
            - JPA cascades deletes if configured
        - Use case - Clear entire table
    - `deleteAll(Iterable<T>)`
        - Purpose: Deletes all entities in the specified collection
        -  Behavior
            - Each entity must either
                - Be managed
                - Have a valid ID
           - Issues one delete per entity
           - Lifecycle callbacks like `@PreRemove` triggered each entity
       - Notes
           - JPA vendor may throw exception if entity not found
           - Use `deleteAllInBatch(Iterable<T>)` for big sets
   - `deleteAllInBatch`
       - Behavior
           - Executes bulk delete  SQL:  `DELETE FROM table`
           - Doesn't load entities into memory
           - Bypasses JPA lifecycle callbacks like `@PreRemove`
           - Faster for large datasets
           - Cascaded deletes
               - Ignored by JPA
               - Must use DB-level `ON DELETE CASCADE`
       - Persistence context
           - Unaware of deletion
           - Afterward, manually
               - Clear 
               - Refresh
       - Internally calls
           1. `EntityManager.createQuery("DELETE FROM Entity")`;
           2. `executeUpdate()`
   - `deleteAllInBatch(Iterable<ID> ids)`
       - Purpose: Delete multiple entities
       - Behavior
           -  Single bulk `DELETE` query (`DELETE FROM user WHERE id IN (?, ?, ?, ...)`)
           - Skips
               - Loading entities into memory
               - JPA lifecycle callbacks like `@PreRemove`
           - Faster for large datasets
           - Cascaded deletes
               - Ignored by JPA
               - Must use DB-level `ON DELETE CASCADE`
       - Persistence context
           - Unaware of deletion
           - Afterward, manually
               - Clear 
               - Refresh
       - Use cases
           - Quickly delete using ID list
           - No need
               - Cascaded deletes via JPA
               - Lifecycle events
           - Minimize memory use
---
[Spring JPA delete methods compared](Spring%20JPA%20delete%20methods%20compared.md)



