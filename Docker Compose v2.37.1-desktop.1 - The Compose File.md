---
project: tag-trek
technology: Docker Compose
version: v2.37.1-desktop.1
topicName: The Compose File
status: exploring
date: 2025-07-03
publish: true
---

# The Compose File
- Valid [Compose File Format](Docker%20Compose%20v2.37.1-desktop.1%20-%20Compose%20File%20Format.md)
- Named
    - `compose.yaml` (preferred)
        - Wins when multiple compose files in working dir
    - `compose.yml`
    - Backward compatibility
        - `docker-compose.yaml`
        - `docker-compose.yml`
- Aggregable
    - Fragments
        - Leverages YAML features
            -  Anchors
               - `&` prefix, no spaces
               -  `&default-volume`
            - Aliases
                - `*` prefix, no spaces- references anchor
                - `*default-volume`
    - Extensions
        -  `x-` prefix
            -  On top-level element
            - defines reusable fragments
    - Include
        - Not a directive, like XML
        - Multi-file composition
            - Achieved via CLI
            - `docker compose -f base.yaml -f override.yaml up`


