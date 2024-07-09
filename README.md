# DevOps app

### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)
 

[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)
 

This is a simple node application that shows on the main page server HELLO HEXLET.
[Image DockerHub Click ME](https://hub.docker.com/repository/docker/antmbx/devops-for-programmers-project-74/general)

## Usage


### Build & install
```bash
make setup
```

### Check Services

```bash
make test
```

### Service mngmt

```bash
make up # docker-compose up -d
make stop # docker-compose stop
make restart # docker-compose restart
```
### Proxy 

config: ./services/caddy/Caddyfile

```bash
# restart proxy
make restart-proxy
```


Edit *.env* file to set up environment variables.

```env
DATABASE_NAME=postgres
DATABASE_USERNAME=userdb
DATABASE_PASSWORD=password
DATABASE_PORT=5432
DATABASE_HOST=db
```


### PostgreSQL

db & config po dir path */var/pgdata*




---
