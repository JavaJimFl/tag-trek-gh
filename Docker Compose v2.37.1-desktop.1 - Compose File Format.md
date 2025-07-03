---
project: tag-trek
technology: Docker Compose
version: v2.37.1-desktop.1
topicName: Compose File Format
status: exploring
date: 2025-07-03
publish: true
---

# Compose File Format
- Versioned Compose file schema
    - e.g., `version: 3.8`
    - File formats
        - v1
            - Lacks top-level `services` key
            - Won't run with Compose V2
        - v2
            - Similar to v3
            - Merged into [Docker Compose Specification](Docker%20Compose%20v2.37.1-desktop.1%20-%20Compose%20Specification.md)
        - v3
            - Similar to v2
            - Targeted at Docker Swarm
            - Merged into [Docker Compose Specification](Docker%20Compose%20v2.37.1-desktop.1%20-%20Compose%20Specification.md)
- Used in `docker-compose.yml`
- Evolves with [Docker Compose Specification](Docker%20Compose%20v2.37.1-desktop.1%20-%20Compose%20Specification.md)
- Used by Docker Compose CLI