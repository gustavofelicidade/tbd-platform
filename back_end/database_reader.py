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


    def list_users_by_email(self):
        try:
            self.cursor.execute("SELECT id, email FROM account_customuser;")
            return self.cursor.fetchall()
        except sqlite3.Error as e:
            print(f"An error occurred while listing users: {e}")

    def delete_user(self, user_id):
        try:
            self.cursor.execute("DELETE FROM account_customuser WHERE id = ?", (user_id,))
            self.connection.commit()
            print(f"User with id {user_id} deleted successfully.")
        except sqlite3.Error as e:
            print(f"An error occurred while deleting the user: {e}")


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

    # tables = db_reader.list_tables()
    # print("Tables in the database:", tables)
    #
    # # Optionally read from a specific table
    # if tables:
    #     data = db_reader.read_all(tables[0])  # Read from the first table as an example
    #     for row in data:
    #         print(row)


    print("Users in the database (ID, Email):")
    users = db_reader.list_users_by_email()
    for user in users:
        print(user)


    # Optionally delete a specific user by ID
    # Uncomment the lines below to use the delete functionality
    # user_id_to_delete = 2  # Example user ID
    # db_reader.delete_user(user_id_to_delete)

    db_reader.close_connection()
