---
title: "Flashcards – docker container create"
deck: Docker::CLI::ContainerCreate
created: 2025-07-18
updated: 2025-07-18
publish: true
tags: 
 - flashcard
 - docker
 - running_containers
 - tag-trek
---

TARGET DECK: Docker::CLI::ContainerCreate

START
Basic
What is the purpose of `docker container create`?
Back: It creates a new container from an image **without starting it**, letting you configure networking, storage, environment, etc., before first run.
Tags: docker cli create purpose exam
<!--ID: 1752881956624-->
END

START
Basic
After you run `docker container create`, what state is the container in?
Back: `Created` (stopped)
Tags: docker cli create lifecycle exam
<!--ID: 1752881956625-->
END

START
Basic
Which two commands together equal `docker run`?
Back: `docker container create` **plus** `docker container start`
Tags: docker cli create lifecycle equivalence exam
<!--ID: 1752881956627-->
END

START
Basic
How many characters are in the full container ID returned by `docker container create`?
Back: 64 hexadecimal characters
Tags: docker cli create id exam
<!--ID: 1752881956628-->
END

START
Basic
Are the image’s `ENTRYPOINT` and `CMD` executed immediately by `docker container create`?
Back: No. They run only when you execute `docker container start`.
Tags: docker cli create lifecycle exam
<!--ID: 1752881956629-->
END

START
Basic
In the usage string, what does `[OPTIONS]` represent?
Back: Optional flags that customize container configuration before first start (e.g., `--name`, `-p`, `--env`).
Tags: docker cli create syntax exam
<!--ID: 1752881956630-->
END

START
Basic
Which flags let you set environment variables during creation?
Back:
- -e KEY=VAL
- --env-file FILE
Tags: docker cli create flag env exam
<!--ID: 1752881956631-->
END

START
Basic
Which option assigns a human-readable name to a container?
Back: `--name <name>`
Tags: docker cli create flag name exam
<!--ID: 1752881956632-->
END

START
Basic
Which option maps a host port to a container port?
Back: `-p HOST_PORT:CONTAINER_PORT` (or `--publish`)
Tags: docker cli create flag networking exam
<!--ID: 1752881956633-->
END

START
Basic
Which option connects a container to an existing user-defined network?
Back: `--network <network>`
Tags: docker cli create flag networking exam
<!--ID: 1752881956634-->
END

START
Basic
Which flag lets you run container processes as a specific user?
Back: `--user <uid[:gid]>` or `--user <user>`
Tags: docker cli create flag security exam
<!--ID: 1752881956635-->
END

START
Basic
Which options add or drop Linux capabilities?
Back: `--cap-add` and `--cap-drop`
Tags: docker cli create flag security exam
<!--ID: 1752881956636-->
END

START
Basic
Which flag gives a container extended privileges, disabling most isolation?
Back: --privileged
Tags: docker cli create flag security exam
<!--ID: 1752881956637-->
END

START
Basic
Which flag sets a memory limit on a container?
Back: `--memory <size>` (e.g., `--memory 512m`)
Tags: docker cli create flag resource exam
<!--ID: 1752881956638-->
END

START
Basic
Which flag limits the amount of CPU available to a container?
Back: `--cpus <value>` (e.g., `--cpus 1.5`)
Tags: docker cli create flag resource exam
<!--ID: 1752881956639-->
END

START
Basic
Which option bind-mounts a host path or named volume?
Back: `-v HOST_PATH:CONTAINER_PATH[:ro|rw]` (or `--volume`)
Tags: docker cli create flag storage exam
<!--ID: 1752881956641-->
END

START
Basic
Which option mounts a temporary in-memory filesystem?
Back: `--tmpfs /path`
Tags: docker cli create flag storage exam
<!--ID: 1752881956642-->
END

START
Basic
Which flag overrides the image’s `ENTRYPOINT` at creation?
Back: `--entrypoint <cmd>`
Tags: docker cli create flag execution exam
<!--ID: 1752881956643-->
END

START
Basic
Which flag sets the working directory inside the container?
Back: `--workdir /app`
Tags: docker cli create flag execution exam
<!--ID: 1752881956644-->
END

START
Basic
When a container is *not running*, which two states can it be in?
Back: `Created` or `Exited`
Tags: docker cli create lifecycle exam
<!--ID: 1752881956645-->
END

START
Basic
Which command lets you inspect a created container’s full configuration?
Back: `docker container inspect <container-id>`
Tags: docker cli create lifecycle exam
<!--ID: 1752881956646-->
END

START
Basic
What flag is commonly used in exams to override `ENTRYPOINT` for an Ubuntu container?
Back: `--entrypoint "/bin/bash"`
Tags: docker cli create flag execution exam
<!--ID: 1752881956647-->
END

START
Cloze
The command&nbsp;`docker run`&nbsp;is roughly equivalent to&nbsp;{{c1::`docker container Back: create` + `docker container start`}}.
Tags: docker cli create equivalence exam
<!--ID: 1752881956648-->
END

START
Cloze
A container created with&nbsp;`docker container create`&nbsp;starts life in the&nbsp;{{c1::`Created`}}&nbsp;state and will not execute&nbsp;{{c2::`ENTRYPOINT` and `CMD`}}&nbsp;until it is started.
Tags: docker cli create lifecycle cloze exam
<!--ID: 1752881956649-->
END

START
Cloze
Use&nbsp;{{c1::`-e KEY=VAL`}}&nbsp;or&nbsp;{{c1::`--env-file FILE`}}&nbsp;to provide environment variables at creation time.
Tags: docker cli create flag env cloze exam
<!--ID: 1752881956650-->
END

START
Cloze
To override the image’s default command without touching its ENTRYPOINT, supply&nbsp;{{c1::`[COMMAND]`}}&nbsp;at the DELETE
end of&nbsp;`docker container create`.
Tags: docker cli create syntax cloze exam
<!--ID: 1752881956651-->
END

START
Basic
What does Docker do if the specified image (and tag) is not present locally when you run `docker container create`?
Back:
Docker automatically **pulls** the image from the registry before creating the container.
Tags: docker cli create pull exam
<!--ID: 1752888273936-->
END

START
Basic
What is the default restart policy for a container created with `docker container create`?
Back:
No restart policy is set (equivalent to `--restart no`) unless you explicitly specify `--restart`.
Tags: docker cli create restart exam
<!--ID: 1752888273939-->
END

START
Basic
Which command can you use to wait on a created or running container and return its exit status?
Back:
`docker container wait <container-id>`
Tags: docker cli create exitstatus wait exam
<!--ID: 1752888273940-->
END

START
Basic
Which sub-command shows the full low-level JSON configuration of a container **before** it has ever been started?
Back:
`docker container inspect <container-id>`
Tags: docker cli create inspect exam
<!--ID: 1752888273942-->
END

START
Cloze
`docker run -d` starts the container detached, while `docker container create` {{c1::does not start the container at all}}—you must follow it with {{c2::`docker container start`}}.
Tags: docker cli create detach cloze exam
<!--ID: 1752888273944-->
END