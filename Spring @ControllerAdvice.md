---
languageOrFramework: Spring
topicName: @ControllerAdvice
status: exploring
date: 2025-07-07
publish: true
tags:
  - spring
  - REST
  - controller
  - annotation
  - tag-trek
---
# Spring @ControllerAdvice
## Global Controller Behavior
- Specialization of `@Component`
- Defines global behavior all controllers 
## Exception handling
- Use `@ExceptionHandler` annotation `@ControllerAdvice` methods
- Catch, handle controller exceptions globally
## Global model attributes
- Use `@ModelAttribute`
- Add shared model data for all controllers
## Global data binding
- Use `@InitBinder`
- Customize parameter binding across controllers