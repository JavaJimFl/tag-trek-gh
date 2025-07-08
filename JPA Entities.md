---
languageOrFramework: JPA
version: undefined
topicName: Entities
status: exploring
date: 2025-07-05
publish: true
tags:
  - spring
  - jpa
  - tag-trek
---
# JPA Entities

- Purpose
    - Marks class as JPA-managed
    - Instances mapped to table rows
        - Table name defaults to class name
        - Override with `@Table` , e.g., `Table(name="custom-table)`
- Name (Entity Name)
    - Optional, defaults to class name
    - Customizable, e.g., `@Entity(name= "My Entity Name)`
        - Used in JPA queries vs. class name
- Annotation target
    - Class-level only
    - Not valid fields or methods
- No-args constructor required
    - `public`
    - `protected`
-  Primary key requirement
    - One of
        - Field annotated with `@Id`
        - `@EmbeddedId` for composite keys
- Structural requirements
    - Annotated class 
        - Must
            - Be 
                - Top-level
                - Non-abstract
                - Not `final` (proxyable)
                -  Discoverable
                    - Spring Boot's entity scanning
                    - Via `persistence.xml`
            - Declare 1+ identifiable attributes
            - Map DB cols to non-final fields
            - Be mutable (getters/setters)
- Recommended
    - Should be serializable
    - Override `equals()`, `hashcode()` based on identifier 

