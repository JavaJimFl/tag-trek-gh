---
languageOrFramework: Java
version: undefined
topicName: Micro-Profile Edition Overview
status: exploring
date: 2025-07-05
publish: true
tags:
  - tag-trek
---

# Java - Micro-Profile Edition Overview
- Definition
    - Java spec cloud-native μServices
    - Built on Jakarta EE
- Goals 
    - Lightweight μServices runtime
    - Modular APIs
    - Cloud-native focus
    - Vendor portability
- Core Specs
    - **Configuration** - External settings
    - **Fault tolerance**
        - Retry
        - Timeout
        - Circuit breaker
    - **Metrics**
        - JVM
        - Application
    - **OpenAPI** - Auto REST docs
    - **JWT** - Token-based security
    - **REST Client** - Type-safe HTTP
    - **GraphQL** - Optional query API
    - **Tracing**
        - Telemetry
        - Observability
- Runtimes
    - Quarkus (Red Hat)
    - Helidon (Oracle)
    - Open Liberty (IBM)
    - Payara Micro
- [SpringBoot Comparison](Java%20Micro-Profile%20Edition%20-%20SpringBoot%20Comparison.md)
- Use cases
    - μServices in K8s
    - Containerized Java apps
    - Cloud-ready architecture