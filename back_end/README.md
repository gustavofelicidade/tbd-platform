# Back-end of the project

## Pre-requisites

install Docker and docker-compose on your machine
https://docs.docker.com/get-docker/

create a .env file in the root directory of the project and add the following variables:

```
POSTGRES_DB = risk_forum
POSTGRES_USR = postgres
POSTGRES_PWD = 123
POSTGRES_HOST = db
POSTGRES_PORT = 5432
```

## How to run the back-end
Docker-compose is used to run the back-end. To run the back-end, run the following command in the root directory of the project:

```bash
docker-compose up -d --build
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
docker exec -it back_end-web-1 bash
python manage.py runserver
```

### Requirements
Docker and docker-compose installed


![django_structure.png](..%2Fassets%2Fdjango_structure.png)


Core is the base of structure. The main app.

Forum is the second app.


### Commands to control the Hazor Risk Forum web application:

Create project: django-admin startproject project_name

Create app:     python manage.py startapp app_name

Run Server:     python manage.py runserver     
