# Makefile

# Клонируем js-fastify-blog.git. Заменяем Makefile, устанавливаем зависимости и запускаем сервис
clone-and-check:
	git clone git@github.com:hexlet-components/js-fastify-blog.git app
	rm -rf app/.git
	cp -f Makefile.app app/Makefile
	docker run -it -w /work -v $PWD/app:/home node:20.12.2 make setup
	docker run -it -u $(id -u) -w /work -v $PWD/app:/work -p 8080:8080 node:20.12.2 make dev


#
setup: compose-build compose-install 

#
setup-and-check: install compose-build img-check

#
setup-and-check-push: install compose-build img-check compose-push


##
compose-build:
	docker-compose -f docker-compose.yml build app
##
compose-install:
	docker-compose run --rm app make setup
	sudo mkdir -p /var/pgdata
	sudo cp -f services/postgres/pg_hba.conf /var/pgdata
##
img-check:
	docker run -p 8080:8080 -e NODE_ENV=development antmbx/devops-for-programmers-project-74 make dev

##
compose-push:
	docker-compose -f docker-compose.yml push app


compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-up:
	docker-compose up -d

compose-restart:
	docker-compose restart

compose-stop:
	docker-compose stop

compose-restart-proxy:
	docker-compose restart caddy