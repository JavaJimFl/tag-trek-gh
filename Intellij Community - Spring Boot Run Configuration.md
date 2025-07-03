---
project: tag-trek
technology: Intellij
version: Community
topicName: Spring Boot Run Configuration
status: exploring
date: 2025-07-03
publish: true
---

# Intellij  Community - Spring Boot Run Configuration

Intellij Community Edition doesn't have Spring Boot Run configuration templates, so we have two ways to do it manually.

---
## Maven run configuration (may use the Maven wrapper)
Quickest, no extra typing, good for dev hot-reload, or testing new dependencies.

1. _Run_ ➡️ Edit Configurations... ➡️ Maven
2. _Name:_ User-chosen value, e.g. "Boot (run)"
3. _Working directory:_ Project root
4. _Command line:_ `spring-boot:run`
5. _(Optional) profiles:_ `dev` ➡️ OK.

 ▶️ Run ➡️ green play button

## Plain "Application" configuration (calls the `main` method)
Let's you pass VM args, debug easily, no Maven build each time.

1.  Run ➡️ Edit Configurations... ➡️ Application
2. _Name:_ User-chosen value, e.g., `TagTrekApplication`
3. _Main Class:_ Start typing and pick from autocomplete, e.g., `com.kaib.tag_trek.TagTrekApplication`
4. _use class path of module:_ Select your main module, e.g., `tag-trek.main`.
5. _(Optional) VM options_: `-Dspring.profiles.active=dev`.
6. Working directory defaults to project root - OK

▶️ Run ➡️ play, or 🐞to debug.
