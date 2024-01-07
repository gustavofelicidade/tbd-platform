# carregando as funções em outros arquivos .py
from Database import database as db
import hashlib
import psycopg2

def make_hashes(password):
    return hashlib.sha256(str.encode(password)).hexdigest()


def check_hashes(password,hashed_text):

    if make_hashes(password) == hashed_text:
        return hashed_text

    return False


# Database connection details
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

# Connect to the Database
conn = psycopg2.connect(
    dbname=DATABASES["default"]["NAME"],
    user=DATABASES["default"]["USER"],
    password=DATABASES["default"]["PASSWORD"],
    host=DATABASES["default"]["HOST"],
    port=DATABASES["default"]["PORT"]
)

conn = db.init_connection()
cur = conn.cursor()

# função para inserir registros no banco de dados
def insert(nome, nascimento, curso, dre, password, email, telefone):
    # Incluir registros no banco de dados
    cur.execute("""
            INSERT into risk_forum.users (nome, idade, curso, dre, password, email, telefone) 
            values('%s', '%s', '%s', '%s')
    """ % (nome, nascimento, curso, dre, password, email, telefone))
    conn.commit()

# função para excluir registros no banco de dados
def delete(id):
    # excluir registros no  banco de dados
    cur.execute("""
            DELETE FROM clientes WHERE id = '%s'
    """ % (id))
    conn.commit()

# função para alterar registros no banco de dados
def update(nome, idade, curso, dre, id):
    # alterar registros no banco de dados
    cur.execute("""
            UPDATE clientes SET (nome, idade,  curso, dre) = ('%s', '%s', '%s', '%s')  WHERE id = '%s'
    """ % (nome, idade, curso, dre, id))
    conn.commit()

# função para selecionar todos os registros no banco de dados
def select():
    # selecionar registros no banco de dados
    cur.execute("""SELECT * FROM risk_forum.users;""")
    recset = cur.fetchall()
    rows = []
    for rec in recset:
        rows.append(rec)
    return rows

# função para selecionar apenas um registros no banco de dados
def select_id(id):
    cur.execute("""
            SELECT * FROM risk_forum.users WHERE id = '%s'
    """ % (id))
    recset = cur.fetchall()
    rows = []
    for rec in recset:
        rows.append(rec)
    return rows



# Perform query.
# Uses st.cache_data to only rerun when the query changes or after 10 min.

def run_query(query):
    with cur:
        # cur.execute("SET search_path TO risk_forum")
        cur.execute(query)
        return cur.fetchall()


def create_usertable():
    cur.execute("""CREATE TABLE IF NOT EXISTS risk_forum.users(username TEXT,password TEXT)""")


def add_userdata(username, password):
    cur.execute("""INSERT into risk_forum.users(username,password) VALUES ('%s', '%s')""" % (username, password))
    conn.commit()
    print(f"added: {username, password}")

def login_user(username, password):
    cur.execute("""SELECT * FROM risk_forum.users WHERE username = '%s' AND password = '%s' """ % (username, password))
    data = cur.fetchall()
    return data


def view_all_users():
    cur.execute('SELECT * FROM risk_forum.users')
    data = cur.fetchall()
    return data