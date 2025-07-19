---
title: "Docker – docker container create"
type: technical
framework: docker
jd_decimal: 64.04
publish: true
created: 2025-07-18
updated: 2025-07-18
tags:
 - docker
 - command
 - running_containers
 - learning
 - tag-trek
---
# Docker – `docker container create`

> **Purpose:** Create a new container from an image without starting it. Useful for preparing configuration (e.g., networking, storage, environment) before the first start, for templating, or for fine‑grained lifecycle control.

---

## [[docker_cli_usage|CLI Usage]]

```
docker container create [OPTIONS] IMAGE [COMMAND] [ARG...]
```

_Initial container state is_ **************_Created_************** _(stopped)._ Docker returns the **full 64‑character container ID** (or its short form when `--quiet`). ENTRYPOINT and CMD are **_not executed_** until you explicitly run `docker container start`.

### Quick mental model

`docker run` ≈ `docker container create` **+** `docker container start`

---

## High‑Value Options for Exams

| Category             | Option                                          | Description                                  |
| -------------------- | ----------------------------------------------- | -------------------------------------------- |
| Identity & Metadata  | `--name <name>`                                 | Assign readable name instead of random ID    |
| Environment          | `-e, --env KEY=VAL` / `--env-file file`         | Set env vars (single or file)                |
| Networking           | `-p, --publish hostPort:containerPort`          | Map host port to container port              |
|                      | `--network <network>`                           | Connect to an existing user‑defined network  |
| DNS                  | `--dns`, `--dns-search`, `--dns-option`         | Override default DNS settings                |
| Isolation & Security | `--user <uid[:gid]> \| <user>`                  | Run processes as a specific user             |
|                      | `--cap-add`, `--cap-drop`                       | Fine‑grained Linux capability control        |
|                      | `--privileged`                                  | Disable almost all isolation (rarely needed) |
| Resources            | `--memory 512m`, `--cpus 1.5`                   | Limit RAM / CPU shares                       |
| Storage              | `-v, --volume HOST_PATH:CONTAINER_PATH[:ro OR rw]` | Bind‑mount host path or named volume         |
|                      | `--tmpfs /path`                                 | Mount an ephemeral tmpfs                     |
| Execution            | `--entrypoint <cmd>`                            | Override image ENTRYPOINT                    |
|                      | `--workdir /app`                                | Set working directory inside container       |
|                      |                                                 |                                              |

> **Tip:** Questions often ask _"which flag allows you to set environment variables when using_  `docker container create`_?"_ ‑ remember `-e` **or** `--env-file`.

---

## Container Lifecycle Cheat‑Sheet

```
               create —> start —> running —> stop —> exited
                 |                             |       |
                 +———> rm (delete) <———————+——+       +——> commit
```

- Only **Created** and **Exited** states exist when a container is not running.
- You can **inspect** a created container (`docker container inspect <id>`) to verify configuration before first run.

---

## Practical Examples

```
# 1. Create an nginx container named web01 on a custom network, but don’t start it
docker container create \
  --name web01 \
  --network frontend \
  -p 8080:80 \
  nginx:1.27

# 2. Prepare a container with environment vars from a file, 256 MiB RAM cap
docker container create --env-file ./app.env --memory 256m myapp:latest

# 3. Override ENTRYPOINT (common exam gotcha)
docker container create --entrypoint "/bin/bash" ubuntu:24.04
```

---

## Common Exam Focus Areas

- **Difference between `****docker create****` and **`**docker run**` – know that `create` does _not_ start the container.
- **State transitions** – understand `Created`, `Running`, `Paused`, `Exited`.
- **Flag awareness** – especially `--name`, `-e/--env-file`, `-v`, `--network`, `--entrypoint`, `--user`, resource limits.
- **Lifecycle commands** – `docker container start|stop|rm|inspect|commit` interplay after using `create`.
- **Image defaults** – ENTRYPOINT & CMD execution timing; how `--entrypoint` overrides, how CMD arguments append.
- **Immutability vs mutability** – a container is a thin writable layer over an image; you can commit a stopped container to a new image (`docker commit`).


## See Also

- [[docker_container_start|`docker container start`]],
- [[docker_container_run|`docker container run`]]
- docker container inspect
- Docker Docs [docker container create](https://docs.docker.com/reference/cli/docker/container/create/)  _(primary source)_