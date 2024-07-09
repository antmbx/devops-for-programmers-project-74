# Makefile

# Клонируем js-fastify-blog.git. Заменяем Makefile, устанавливаем зависимости и запускаем сервис
clone-and-check:
	git clone git@github.com:hexlet-components/js-fastify-blog.git app
	rm -rf app/.git
	cp -f Makefile.app app/Makefile
	docker run -it -w /work -v $PWD/app:/home node:20.12.2 make setup
	docker run -it -u $(id -u) -w /work -v $PWD/app:/work -p 8080:8080 node:20.12.2 make dev

# Оставить все контейнеры
docker-stop:
	docker stop $(sudo docker ps -qa)

#
setup: compose-install compose-build

#
setup-and-check: compose-install compose-build compose-img-check

#
setup-and-check-push: compose-install compose-build compose-img-check compose-push


##
build:
	docker-compose -f docker-compose.yml build app
##
install:
	docker-compose run --rm app make setup

##
img-check:
	docker run -p 8080:8080 -e NODE_ENV=development antmbx/devops-for-programmers-project-74 make dev

##
push:
	docker-compose -f docker-compose.yml push app


test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app


up:
	docker-compose up -d

restart:
	docker-compose restart

restart:
	docker-compose stop


compose-restart-proxy:
	docker-compose restart caddy