FROM postgres:16

ENV POSTGRES_PASSWORD=123
ENV POSTGRES_DB=risk_forum
ENV POSTGRES_USER=postgres

WORKDIR /database

COPY . /database

RUN psql -U postgres -d risk_forum -f dump.sql

EXPOSE 5432

