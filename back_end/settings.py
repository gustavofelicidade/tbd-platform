import psycopg2
import os
import dj_database_url

"""
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': 'risk_forum',
    }
}
"""

DATABASES = {
    'default': dj_database_url.config(default=os.environ.get('DATABASE_URL'))
}
