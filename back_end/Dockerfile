FROM python:3.10

ENV PIP_DISABLE_PIP_VERSION_CHECK 1 
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code

COPY . /code

RUN apt-get update \
    && apt-get install -y gcc \
    && apt-get install -y libpq-dev \
    && pip install -r requirements.txt 

EXPOSE 8000

CMD sh -c "python manage.py makemigrations account --empty && python manage.py migrate account && python manage.py migrate && python manage.py collectstatic && python manage.py runserver 0.0.0.0:8000"