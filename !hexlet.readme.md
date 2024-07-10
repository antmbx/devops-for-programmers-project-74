#### 1) Не хватает команды npm test https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L2

по заданию make test, добавил

Стало

https://github.com/antmbx/devops-for-programmers-project-74/blob/1d95e6dc5bd4efb8fc088096f5b9359915412165/docker-compose.yml#L9



#### 2) Похоже что это лишнее, так как в задание только 'Добавьте сервис caddy в docker-compose.override.yml.' https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L12-L16

Удалил Caddy 


#### 3) Желательно указать конкретную версию https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L19

Указал
https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/docker-compose.yml#L20



#### 4) Для db обычно указывают volume, предлагаю тоже указать https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L18

добавил создание и копирование конфига для доступа к БД только приложению app (в hba_conf)

https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/docker-compose.yml#L30


https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/Makefile#L28

https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/Makefile#L29




#### 5) Не хватает image https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.override.yml#L18

Готово
https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/docker-compose.override.yml#L21


#### 6) Этот файл в репозитории лишний, предлагаю вместо него использовать .env.example https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.env

Готово


#### 7) По условиям задания ожидается Makefile в корне репозитория, в котором будут сокращены длинные команды. Предлагаю сделать такой файл и удалить sh-файлы. 

https://github.com/antmbx/devops-for-programmers-project-74/blob/main/Makefile


#### 8) Похоже что push.yml требует доработок https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.github/workflows/push.yml

Не понял каких, но убрал лишние комменты

https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.github/workflows/push.yml