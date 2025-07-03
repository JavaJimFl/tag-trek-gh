---
project: tag-trek
technology: Docker Compose
version: v2.37.1-desktop.1
topicName: CLI
status: exploring
date: 2025-07-03
publish: true
---

# CLI
- Overview
    - Includes`docker compose` commands and subcommands
    - Included with Docker Desktop
- Purpose
    - Manage multi-container app lifecycle (`compose.yaml`)
    - Supports starting, stopping, configuring apps via CLI
- Key commands
    - Start Services
        - `docker compose up`
    - Stop and remove services
        - `docker compose down`
    - View Logs
        - `docker compose logs`
    - List services with statuses
        - `docker compose ps`
    - Destroy the container
        - `docker rm <container-name-or-id>`
        - Force stop first
            - `docker rm -f <container-name-or-id>`
    - More commands:
        - [docker compose docs](https://docs.docker.com/reference/cli/docker/compose/)