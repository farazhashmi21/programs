# python_mysql_connection.py

import mysql.connector as ql

class python_mysql:
	def __init__(self,):
		pass
	def connect_database(self):
		try:
			host = "localhost"
			username = "developerfarazhashmi"
			password = "uV67#*dB92%$dE"
			conn = ql.connect(host = host,username = username,password = password)
			if conn:
				return conn
			else:
				raise Exception("Error Occur")
		except:
			print("Error")
		finally:
			print("Connected To The Database")
	def show_all_databases(self):
		try:
			get_connection = self.connect_database()
			print("Tables List:")
			connection_cursor = get_connection.cursor()
			sql_query = "show databases;"
			connection_cursor.execute(sql_query)
			for tables in connection_cursor:
				print(tables)
		except:
			print("Somethng Went Wrong")
		finally:
			get_connection.close()
	def create_a_database(self):
		cN = self.connect_database()
		database_to_create = "pythonweb"
		query = "CREATE DATABASE "+database_to_create+";"
		cur = cN.cursor()
		cur.execute(query)
	def create_a_database_table(self):
		conn = self.connect_database()
		database_to_use = "pythonweb";
		table_name = "users"
		sql = "CREATE TABLE users(user_id int primary key not null);"
		cur = conn.cursor()
		cur.execute("use pythonweb;")
		cur.execute(sql)
	def show_all_tables(self):
		conn = self.connect_database()
		database_to_use = "use pythonweb;"
		sql = "show tables;"
		cur = conn.cursor()
		cur.execute(database_to_use)
		get_tables = cur.execute(sql)
		for tB in cur:
			print(tB)
	def new_record(self):
		conn = self.connect_database()
		cur = conn.cursor()
		cur.execute("use pythonweb;")
		sql = "INSERT INTO users(user_name) values('Spear');"
		cur.execute(sql)
		conn.commit()
	def fetch_all_records(self):
		conn = self.connect_database()
		cur = conn.cursor()
		database_to_use = "use pythonweb;"
		sql = "SELECT * FROM `users`;"
		cur.execute(database_to_use)
		cur.execute(sql)
		for users in cur:
			print(users)
	def update_the_record(self):
		conn = self.connect_database()
		cur = conn.cursor()
		database_to_use = "use pythonweb;"
		cur.execute(database_to_use)
		sql = "UPDATE users SET user_name = 'Engr. Faraz Hashmi' WHERE user_id = 1;"
		cur.execute(sql)
		conn.commit()
	def remove_record(self):
		conn = self.connect_database()
		cur = conn.cursor()
		cur.execute("use pythonweb;")
		sql = "DELETE FROM users where user_id = 2;"
		cur.execute(sql)
		conn.commit()
pM = python_mysql()
# pM.create_a_database()
# pM.show_all_databases()
# pM.create_a_database_table()
# pM.show_all_tables()
# pM.new_record()
pM.fetch_all_records()
# pM.update_the_record()
# pM.remove_record()
