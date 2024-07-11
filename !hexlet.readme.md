
# Комментарии к замечаниям

## 11.07.2024

### 1) Этот файл используется? Если нет, предлагаю убрать https://github.com/antmbx/devops-for-programmers-project-74/blob/main/Makefile.app

> Используется. После клонирования репозитория, подменяется Makefile
>
> https://github.com/antmbx/devops-for-programmers-project-74/blob/bdc759e5cab9ba68bf0799402278d3f4184c03f0/Makefile#L7



### 2) Для удобства подобные команды, которые используют docker compose можно именовать с префиксом, например make compose-up https://github.com/antmbx/devops-for-programmers-project-74/blob/bdc759e5cab9ba68bf0799402278d3f4184c03f0/Makefile#L35-L54

> Исправил
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/524a2babb68d77ed156599576e488e123246c0e3/Makefile#L35-L52




### 3) В задании просят 'Он должен запускать тесты, собирать production-образ и отправлять его на Docker Hub с тегом latest.', предлагаю добавить тесты. https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.github/workflows/push.yml


> Готово. Добавил переменные окружения для создания тестовой базы
>
> https://github.com/antmbx/devops-for-programmers-project-74/blob/6580df39f2e8b2b5d4cd76675a92b62e03e5a50d/.github/workflows/push.yml#L10-L40



## 08.07.2024

#### 1) Не хватает команды npm test https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L2

> по заданию make test, добавил
> 
> ##### Готово
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/1d95e6dc5bd4efb8fc088096f5b9359915412165/docker-compose.yml#L9



#### 2) Похоже что это лишнее, так как в задание только 'Добавьте сервис caddy в docker-compose.override.yml.' 


> ##### Готово
>
> Удалил Caddy из docker-compose.yml
>
> https://github.com/antmbx/devops-for-programmers-project-74/blob/main/docker-compose.yml


#### 3) Желательно указать конкретную версию https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L19


> ##### Указал
> https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/docker-compose.yml#L20



#### 4) Для db обычно указывают volume, предлагаю тоже указать https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.yml#L18



> ##### Готово
> 
> добавил создание и копирование конфига для доступа к БД только приложению app (в hba_conf)
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/b5c37edb54db3186fe28ee3b3b6068c5fc482ca3/docker-compose.yml#L30
> 
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/Makefile#L28
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/Makefile#L29
> 



#### 5) Не хватает image https://github.com/antmbx/devops-for-programmers-project-74/blob/365e61b153486c254ed066107b957b63545a5967/docker-compose.override.yml#L18


> ##### Готово
> https://github.com/antmbx/devops-for-programmers-project-74/blob/8261642201f91dc2cde3fdca2ced91e4633f4206/docker-compose.override.yml#L21
> 
> 
#### 6) Этот файл в репозитории лишний, предлагаю вместо него использовать .env.example https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.env

>  ##### Готово
 
 
#### 7) По условиям задания ожидается Makefile в корне репозитория, в котором будут сокращены длинные команды. Предлагаю сделать такой файл и удалить sh-файлы. 

> 
> ##### Готово
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/main/Makefile
> 

#### 8) Похоже что push.yml требует доработок https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.github/workflows/push.yml

> Не понял каких, но убрал лишние комменты
> ##### Готово
> 
> https://github.com/antmbx/devops-for-programmers-project-74/blob/main/.github/workflows/push.yml