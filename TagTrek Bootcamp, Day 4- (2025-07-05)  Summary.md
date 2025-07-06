---
type: daily
project: tag-trek
date: 2025-07-05
publish: true
---
# TagTrek Bootcamp Day 4 – 2025-07-05

## 🎯 Goals
- [ ] 🐣 UI:
    - [ ] W3C Schools JavaScript Tutorial lessons:
        - [ ] JS Variables 
        - [ ] JS Let
        - [ ] JS Const
        - [ ] JS Operators
        - [ ] JS Arithmetic
- [ ] 🌳 Middleware :
- [ ]   Create a test object mother for 'Track' test data
    - [x] Create Track DTO with JPA annotations ✅ 2025-07-06
        - [x] Write unit tests ✅ 2025-07-06
    - [x] Create Track record ✅ 2025-07-06
        - [x] Write unit tests ✅ 2025-07-06
    - [x] Create a `MapStruct` mapper for the Track record and Track DTO ✅ 2025-07-06
        - [x] Write unit tests ✅ 2025-07-06
        - [x] Created `application-dev.yaml` file ✅ 2025-07-06
    - [x] Added dependencies to pom.xml ✅ 2025-07-06
        - [x] MapStruct ✅ 2025-07-06
        - [x] AssertJ ✅ 2025-07-06
        - [x] EqualsVerifier ✅ 2025-07-06
        - [x] ToStringVerifier ✅ 2025-07-06
    - [x] Added code style to Intellij based on the Google Java Style (ChatGPT-generated) ✅ 2025-07-06
        - [x] Tweaked a couple of settings to meet my preferences ✅ 2025-07-06
            - [x] 120 char lines ✅ 2025-07-06
            - [x] No splat imports ✅ 2025-07-06
    - [ ] Create `TrackRepository`, which extends `JpaRepository<Track,Long>`
    - [ ] Add Controller, implement `GET /tracks`
        - [ ] Returns one track
    - [ ] Add Spring MVC test (H2) profile that asserts JSON array size 1
- [ ] ⚙️ DevOps  : 
    - [ ] Draft Dockerfile, (multi-stage Maven → JRE21 ) and build `tagtrek-api:dev` image locally.

## 🐣 UI Track
I didn't get to anything on this track today

## 🌳 Middleware Track
I didn't get everything on the list done.  Ended up focusing on JPA entities and Java Records.  Discovered MapStruct, using it to move track data between the service and persistence layers.
Unit-tested the code I wrote and added an Object mother with an integrated builder pattern.

## ⚙️ DevOps Track
I didn't get to anything on this track today.

## 🧩 Topic touched
- [JPA Entities](JPA%20Entities.md)
- [Java Records](Java%20Records.md)
- [MapStruct – Java bean mappings, the easy way!](https://mapstruct.org/)
- [Mistaeks I Hav Made: Test Data Builders: an alternative to the Object Mother pattern](http://www.natpryce.com/articles/000714.html)


## 🔍 Insights / Questions
- I need to slow the pace of learning down.  Asked ChatGPT to rearrange the tracks in the projects,  rotating through two each day, three hours each.  I also asked for fewer tasks in each track, giving me more time to complete them, with deeper notes.  It also adds time to discover new learning opportunities.

## 🚀 Next actions
- [ ] W3C Schools JavaScript Tutorial lessons:
    - [ ] JS Variables 
    - [ ] JS Let
    - [ ] JS Const
    - [ ] JS Operators
    - [ ] JS Arithmetic
- [ ]  Create `TrackRepository`, which extends `JpaRepository<Track,Long>`
    - [ ] Add Controller, implement `GET /tracks`
        - [ ] Returns one track
    - [ ] Add Spring MVC test (H2) profile that asserts JSON array size 1