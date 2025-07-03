---
project: tag-trek
technology: Docker
version: 28.2.2
topicName: Configure Postgres container
status: exploring
date: 2025-07-02
publish: true
---

# Docker  28.2.2 - Configure Postgres container

```shell
# Using the default 'postgres' superuser
docker run -d --name pg16 \
  -e POSTGRES_PASSWORD=B3lla123! \
  -e POSTGRES_DB=tagtrek \
  -p 5432:5432 \
  -v pgdata:/var/lib/postgresql/data \
  postgres:16
```

##  Docker command breakdown
```text
Docker run - Creates and runs a new container from an image (alias for `docker container run`)
     -d          : Runs the container in the background and prints the container ID to the console
     --name  : The container name
     -e           : Environment variables (name-value pairs)
     -p          : Binds TCP port 5432 of the container to TCP port 5432 of the host
     -v          : The volume mount passed to Docker, holds the Postgres data.  Persists between                          restarts and recreations,
                 pgdata                           : The volume name
                 /var/lib/postgresql/data: The targe path within the container where the volume is                                                   mounted
     postgres:16: The image name (PostgreSQL v16 in this case)
```


--- 
DevOps notes for later:

## 2 Keep the container; create objects interactively

_(if you’ve already loaded data or don’t want to restart)_

```bash
# open psql inside the running container
docker exec -it pg16 psql -U postgres
```

Then run SQL:

```sql
-- 1. create a role
CREATE USER tagtrek WITH PASSWORD 'tagtrek';

-- 2. create a database owned by that role
CREATE DATABASE tagtrek OWNER tagtrek;

-- (optional) 3. create a schema just for this app
\c tagtrek CREATE SCHEMA id3 AUTHORIZATION tagtrek;
ALTER ROLE tagtrek SET search_path = id3,public;`
```

---

## 3 Automatic init scripts (for CI / repeatability)

1. Put a `.sql` file in a host folder and mount it as **`/docker-entrypoint-initdb.d/`**.
2. During container start-up Postgres executes every script in that directory **exactly once**.
```sql

-- init/tagtrek.sql
CREATE USER tagtrek WITH PASSWORD 'tagtrek';
CREATE DATABASE tagtrek OWNER tagtrek;
```

### Docker Compose snippet:
```yaml
services:
  db:
    image: postgres:16
    environment:
      POSTGRES_PASSWORD: superadminpw   # for the default postgres user
    volumes:
      - pgdata:/var/lib/postgresql/data
      - ./init:/docker-entrypoint-initdb.d
    ports:
      - "5432:5432"
volumes:
  pgdata:
```

_(After the first successful start the script is ignored; re-initialise by wiping the `pgdata` volume.)_

---

### Quick sanity check
```bash
docker exec -it pg16 psql -U postgres -d tagtrek -c "\dt"
```
