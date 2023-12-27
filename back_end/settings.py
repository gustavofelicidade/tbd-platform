import psycopg2

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": "risk_forum",
        "USER": "postgres",
        "PASSWORD": "123",
        "HOST": "db",  # set in docker-compose.yml
        "PORT": 5432,  # default postgres port
    }
}
