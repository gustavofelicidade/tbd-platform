import psycopg2


def init_connection():
    return psycopg2.connect(
        host="localhost",
        port="5432",
        dbname="risk_forum",
        user="postgres",
        password="123",
    )
