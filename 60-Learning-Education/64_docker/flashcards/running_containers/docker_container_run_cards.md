---
title: "Flashcards – docker container run"
deck: docker::running_containers
created: 2025-07-17
updated: 2025-07-17
publish: true
tags: 
 - flashcard
 - docker
 - running_containers
 - tag-trek
---

TARGET DECK: Docker::Running_Containers

START
Basic
What command both creates **and** starts a new container from an image (pulling it first if necessary)?
Back: `docker container run`
Tags: docker run command
<!--ID: 1752787918953-->
END

START
Basic
`docker container run` is functionally equivalent to running which **two** commands in sequence?
Back: `docker container create` **then** `docker container start`
Tags: docker run equivalence
<!--ID: 1752787918954-->
END

START
Basic
Which required positional argument immediately follows all options in `docker container run`?
Back: **`IMAGE`**
Tags: docker run image
<!--ID: 1752787918956-->
END

START
Basic
Which option automatically removes the container after it exits?
Back: `--rm`
Tags: docker run rm
<!--ID: 1752787918957-->
END

START
Basic
Which short flag runs the container in the background and prints its container ID?
Back: `-d` ( `--detach` )
Tags: docker run detach
<!--ID: 1752787918959-->
END

START
Basic
Which paired short flags create an interactive TTY session inside the container?
Back: `-it`  ( `--interactive --tty` )
Tags: docker run interactive tty
<!--ID: 1752787918960-->
END

START
Basic
What does the option `--entrypoint <cmd>` do in `docker container run`?
Back: Overrides the image’s default **ENTRYPOINT** with `<cmd>`.
Tags: docker run entrypoint
<!--ID: 1752787918961-->
END

START
Basic
What port-mapping mnemonic helps you remember the order in `-p 8080:80`?
Back: **[outside]:[inside]** — host port first, container port second.
Tags: docker run port mapping
<!--ID: 1752787918962-->
END

START
Basic
Running  
```bash
docker container run alpine echo "Hi"
```  
(without `-d`) prints what to your terminal?
Back: **Hi** (the command’s stdout); no container ID because it isn’t detached.
Tags: docker run output
<!--ID: 1752787918963-->
END

START
Basic
Running the same command **with** `-d` prints what to the terminal?
Back: Only the **container ID**; command output goes to container logs.
Tags: docker run detached output
<!--ID: 1752787918964-->
END

START
Cloze
`docker container run [OPTIONS] {{c1::IMAGE}} [COMMAND] [ARG...]`
Tags: docker run cloze syntax
<!--ID: 1752787918965-->
END

START
Cloze
`docker container run {{c1::--rm}} alpine echo "Hi"` → container auto-removes on exit.
Tags: docker run cloze rm
<!--ID: 1752787918966-->
END

START
Cloze
Run in background with {{c1::-d}} / {{c1::--detach}}.
Tags: docker run cloze detach
<!--ID: 1752787918968-->
END

START
Cloze
Port mapping format: `-p {{c1::host}}:{{c1::container}}`
Tags: docker run cloze port
<!--ID: 1752787918969-->
END

START
Cloze
`docker container run --entrypoint {{c1::<cmd>}} IMAGE` → overrides default {{c1::ENTRYPOINT}}.
Tags: docker run cloze entrypoint
<!--ID: 1752787918970-->
END
