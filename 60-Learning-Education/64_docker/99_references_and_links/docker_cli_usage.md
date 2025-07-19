---
title: "Docker – CLI Usage"
type: technical
framework: docker
jd_decimal: 64.99
publish: true
created: 2025-07-18
updated: 2025-07-18
tags:
 - docker
 - command
 - learning
 - tag-trek
---

# Docker – CLI Usage
## Overview 
- Every Docker CLI command has a high-level  "Usage"  statement. 

## Notation conventions
- \[Square brackets\]: optional
- UPPERCASE: user-supplied value
- `[...]`: repeatable

## Statement token definitions

| Token       | Description                                                                                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `[OPTIONS]` | One or more flags that modify behavior before execution (`--name`, `--env`, `--network`, …). You can specify **multiple options** and they may appear in any order. |
| `IMAGE`     | Image name (`name[:tag]` or `name@digest`) that supplies layers, default `ENTRYPOINT` + `CMD`.                                                                     |
| `[COMMAND]` | Overrides the image’s default `CMD` (…unless you also supply `--entrypoint`, which overrides the image’s ENTRYPOINT.).                                            |
| `[ARG…]`    | Positional arguments passed to `COMMAND` or appended to the image’s `CMD`.                                                                                         |
