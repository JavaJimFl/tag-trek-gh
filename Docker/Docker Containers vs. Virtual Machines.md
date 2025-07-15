---
languageOrFramework: Docker
version: undefined
topicName: Docker Containers vs. Virtual Machines
status: exploring
date: 2025-07-14
publish: true
tags:
  - ci-cd
  - docker
  - tag-trek
---
# Overview
Compare and contrast containers and virtual machines:
- Containers
    - Docker
- Virtual Machines
    - Hashicorp Vagrant

## Virtual Machines
- Run on top of hypervisors
- Need hardware emulation
- Can take up a lot of space
- User responsible operating system
    - Installing
    - Configuring
- Can install as many apps hardware support
- Can run multiple apps simultaneously
- Cannot interact with host
    - Possible run many apps
    - Secure

## Containers
- Run in container runtime
- Do note emulate any hardware
- No need to 'boot up'
- Don't require OS
- Take up less space
- Only run one app/time by design
- Can interact with host