# DevOps app

### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)
 

[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)
 

This is a simple node application that shows on the main page server HELLO HEXLET.
[Image DockerHub Click ME](https://hub.docker.com/repository/docker/antmbx/devops-for-programmers-project-74/general)

## Usage



```bash
docker run -p 8080:8080 -e NODE_ENV=development antmbx/devops-for-programmers-project-74 make dev

# open http://0.0.0.0:8080 in browser

```

Edit *.env* file to set up environment variables.

```env
DATABASE_NAME=postgres
DATABASE_USERNAME=userdb
DATABASE_PASSWORD=password
DATABASE_PORT=5432
DATABASE_HOST=db
```

P.S.
ignore please my files:
- deploy_from_dockerhub.sh
- runapp.sh
- Caddyfile_b
- etc


---
