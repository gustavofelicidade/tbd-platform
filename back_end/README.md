# Back-end of the project

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


### Commands to control the Hazer Risk Forum web application:

Create project: django-admin startproject project_name

Create app:     python manage.py startapp app_name

Run Server:     python manage.py runserver     
