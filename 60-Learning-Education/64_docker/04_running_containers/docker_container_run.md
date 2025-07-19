---
title: "Docker – docker container run"
type: technical
framework: docker
jd_decimal: 64.04
publish: true
created: 2025-07-17
updated: 2025-07-17
tags:
 - docker
 - command
 - running_containers
 - learning
 - tag-trek
---

# `docker container cun`

## Description
- `docker container run` command:
    - Runs command in new container
    - Pulls image, if needed, and starts it
    - Usage: `docker container run [OPTIONS] IMAGE [COMMAND] [ARG...]`
    - **Equivalent to:** `docker container create …` → `docker container start …`

## Common Options

| Short Form   | Long Form             | Purpose                                                 |
| ------------ | --------------------- | ------------------------------------------------------- |
| `-d`         | `--detach`            | Run in background (returns container ID).               |
|              | `--rm`                | Automatically remove the container when it exits.       |
|              | `--name <name>`       | Assign a custom container name.                         |
| `-p <h>:<c>` | `--publish <h>:<c>`   | Map **h**ost **p**ort to container port (`-p 8080:80`). |
| `-it`        | `--interactive --tty` | Run interactively with TTY (common for shells).         |
|              | `--entrypoint <cmd>`  | Overwrite the image’s default `ENTRYPOINT`.             |

## Examples
### Run an Nginx container in the foreground
- Long form:
```bash
$ docker container run nginx
```
- Shorthand alias:
```bash
$ docker run nginx
```

### Detached web app with port mapping and a custom name
- Options:
    - detached (`-d`)
    - port mapping (`-p`)
- Port mapping mnemonic `[outside]:[inside]`
- Custom name (`--name`): `webapp`
- Image:
    - name: `my_image`
    - version: `latest`
```Bash
docker container run -d -p 8080:80 --name webapp my_image:latest
```

### One-off task that cleans up after exit
- Options:
    - Remove on exit (`--rm`)
    - Image name: `alpine`
    - Command:  echo "Hello from Alpine"
        - Printed to `stdout` after start
        - No container ID (no -d arg passed in)
```Bash
docker container run --rm alpine echo "Hello from Alpine"
```
## References
- [[docker_container_start|Docker Start]]
- [[docker_ container_create|Docker Create]]
- [Docker Docs](https://docs.docker.com/engine/reference/commandline/run/)