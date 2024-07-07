# DevOps app

### Hexlet tests and linter status:
[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)


[![Actions Status](https://github.com/antmbx/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/antmbx/devops-for-programmers-project-74/actions)


This is a simple node application that shows on the main page server HELLO HEXLET.

## Usage

```bash
docker run -p 8080:8080 -e NODE_ENV=development antmbx/devops-for-programmers-project-74 make dev

# open http://0.0.0.0:8080 in browser
 ```

Edit *.env* file to set up environment variables.

```env
DATABASE_HOST=[db host]
DATABASE_NAME=[db name]
DATABASE_USERNAME=[db username]
DATABASE_PASSWORD=[db password]
```


![Screen of example-app](assets/app.png)

---
