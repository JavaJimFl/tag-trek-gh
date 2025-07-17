---
languageOrFramework: Spring JPA
topicName: Exception Propagation
status: exploring
date: 2025-07-07
publish: true
tags:
  - spring
  - jpa
  - exception
  - tag-trek
---
# Spring JPA Exception Propagation

Normally the service layer in a Spring Boot application using JPA will let exceptions propagate to the controller, to be centrally handled by a [@ControllerAdvice](Spring%20@ControllerAdvice.md) and converted into the appropriate HTTP responses.

## Why this works
 - Separation of concerns
 - The service layer focuses on business logic.
 - The controller focuses on HTTP-specific behaviors
 - the `@ControllerAdvice` maps domain or persistence exception to HTTP status codes or error responses

That said, there are some situations where the service should catch and translate lower-level exceptions to meaningful business exceptions:

| Raw Exception                     | Service Layer Translates To           | Reason              |
| --------------------------------- | ------------------------------------- | ------------------- |
| `EntityNotFoundException` (JPA)   | `ArtistNotFoundException`             | Domain-specific     |
| `DataIntegrityViolationException` | `DuplicateArtistException` or similar | Clarifies the cause |
| `TransactionRequiredException`    | Possibly swallowed or wrapped         | Rarely exposed      |

These two approaches avoid leaking JPA-specific details into controller logic, keeping the API semantics clean.