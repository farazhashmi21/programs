# Python While Loop Example
import mysql.connector as ql


class PyWhile:
    def __init__(self):
        pass

    def example(self):
        i = 0
        while (i < 10):
            print("[", str(i), "] I Love You.")
            i = i + 1
        else:
            print("[", str(i), "] Once For All", "I Love You")

    def connect_db(self, host_name="localhost", user_name="developerfarazhashmi", password='uV67#*dB92%$dE',
                   database='pythonweb'):
        connect = ql.connect(host=host_name, username=user_name, password=password, database=database)
        if connect:
            return connect
        else:
            print("Something went wrong!")

    def show_all_tables(self, query):
        get_connection = self.connect_db()
        connection_cursor = get_connection.cursor()
        sql = query
        connection_cursor.execute(sql)
        fetch_results = connection_cursor.fetchall()
        print("These are the tables web have:")
        for f in fetch_results:
            print(f)
        get_connection.close()

    def select_all_records(self, table_name="users"):
        conn = self.connect_db()
        cur = conn.cursor()
        sql = "select * from " + table_name + ";"
        cur.execute(sql)
        result = cur.fetchall()
        for r in result:
            print(r)
        conn.close()

    def insert_record(self, table_name="users", user_name="ABC"):
        connection = self.connect_db()
        connection_cursor = connection.cursor()
        sql = "insert into " + table_name + "(user_name) values (%s);"
        get_user_name = (user_name,)
        connection_cursor.execute(sql, get_user_name)
        connection.commit()
        print(connection_cursor.rowcount, "row(s) updated.")
        connection.close()

    def update_the_record(self, table_name, uid, new_value):
        conn = self.connect_db()
        cur = conn.cursor()
        sql = "update " + table_name + " set user_name = (%s) where user_id = (%s);"
        valu = (new_value, str(uid),)
        cur.execute(sql, valu)
        conn.commit()
        print("[", cur.rowcount, "] row(s) updated.")
        conn.close()

    def remove_the_record(self, uid=0, table_name="cats"):

        get_database_connection = self.connect_db()
        db_cursor = get_database_connection.cursor()
        sql = "DELETE FROM " + table_name + " WHERE user_id = (%s)"
        vals = (uid,)
        db_cursor.execute(sql, vals)
        get_database_connection.commit()
        print("[" +str(db_cursor.rowcount) + "] record(s) removed.")
        get_database_connection.close()


pywhile = PyWhile()
pywhile.example()
# print(pywhile.connect_db())
# pywhile.show_all_tables("show tables;")
# pywhile.select_all_records()
# pywhile.insert_record("users","GHZ")
# pywhile.update_the_record("users", 262, "Maserati")
# pywhile.remove_the_record(261, "users")
