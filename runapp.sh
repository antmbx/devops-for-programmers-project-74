# /bin/bash
rm -rf app
git clone git@github.com:hexlet-components/js-fastify-blog.git app
rm -rf app/.git

cp -f Makefile app/Makefile

docker run -it -w /work -v $PWD/app:/work node:20.12.2 make setup

docker run -it -u $(id -u) -w /work -v $PWD/app:/work -p 8080:8080 node:20.12.2 make dev