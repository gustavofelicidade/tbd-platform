import sqlite3


class DatabaseReader:
    def __init__(self, db_path):
        self.db_path = db_path

    def connect(self):
        try:
            self.connection = sqlite3.connect(self.db_path)
            self.cursor = self.connection.cursor()
        except sqlite3.Error as e:
            print(f"An error occurred while connecting to the database: {e}")

    def list_tables(self):
        try:
            self.cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
            return [table[0] for table in self.cursor.fetchall()]
        except sqlite3.Error as e:
            print(f"An error occurred while listing tables: {e}")
            return []

    def read_all(self, table_name):
        try:
            query = f"SELECT * FROM {table_name}"
            self.cursor.execute(query)
            return self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"An error occurred while reading from the database: {e}")

    def close_connection(self):
        if self.connection:
            self.connection.close()


# Example usage
if __name__ == "__main__":
    db_reader = DatabaseReader('mydatabase')
    db_reader.connect()

    tables = db_reader.list_tables()
    print("Tables in the database:", tables)

    # Optionally read from a specific table
    if tables:
        data = db_reader.read_all(tables[0])  # Read from the first table as an example
        for row in data:
            print(row)

    db_reader.close_connection()
