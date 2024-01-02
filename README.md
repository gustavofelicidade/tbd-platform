# placeholder-title

This is a repository for the HG project which consist of a full-stack web application integrated with a gpt-4.

## Project Structure

The project structure is as follows:
```
risk-forum
├───assets
├───back_end
│   ├───account
│   │   └───migrations
│   ├───blog
│   │   ├───migrations
│   │   └───templates
│   ├───core
│   │   ├───static
│   │   │   ├───css
│   │   │   └───js
│   │   └───templates
│   └───forum
│       ├───migrations
│       ├───static
│       └───templates
├───database
└───docs
```

## Prerequisites

Docker and docker-compose installed

## Getting Started

You can run the project locally by following the Docker containerization steps.

select the back_end folder and run the following command:

```
docker-compose up -d --build
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
docker exec -it back_end-web-1 bash
python manage.py runserver
```

This will run the project locally on your machine you can access it by going to http://localhost:8000/ (default port).

## Deployment

The project in future will be deployed on a cloud service.

## Built With

* [Django](https://www.djangoproject.com/) - The web framework used
* [React](https://reactjs.org/) - The front-end framework used
* [PostgreSQL](https://www.postgresql.org/) - The database used
* [Docker](https://www.docker.com/) - The containerization tool used
* [Trello](https://trello.com/) - The agile development tool used
* [Cloud Storage](https://cloud.google.com/) - The cloud storage service used

## Contributing

Please read [CONTRIBUTING.md]

## Versioning

We use GitHub for versioning. For the versions available, see the [tags on this repository]

## Authors

SD Labs

## License

This is a proprietary project.