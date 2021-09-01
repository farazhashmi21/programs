# Cars Class
from automobiles import automobiles
import mysql.connector
class cars(automobiles):
	def __init__(self):
		pass
	def connection_to_database(self):
		host = "localhost"
		username = "developerfarazhashmi"
		password = "uV67#*dB92%$dE"
		database = "pythonweb"
		connect = mysql.connector.connect(host = host, username = username, password = password, database = database)
		if connect:
			return connect
		else:
			print("Something went wrong")
	def show_tables(self):
		conn = self.connection_to_database()
		cur = conn.cursor()
		sql = "show tables;"
		cur.execute(sql)
		result = cur.fetchall()
		for r in result:
			print(r)
		conn.close()

	def insert_new_record(self):
		connector = self.connection_to_database()
		cursor = connector.cursor()
		sql = "insert into users(user_name) values (%s);"
		par = ("Python User",)
		cursor.execute(sql, par)
		connector.commit()
		print(cursor.rowcount, "record(s) updated.")
		connector.close()

	def fetch_data(self):
		conn = self.connection_to_database()
		cur = conn.cursor()
		sql = "select user_name as User, user_id as Id from users;"
		cur.execute(sql)
		res = cur.fetchall()
		for r in res:
			print(r)
		conn.close()

	def update_record(self):
		connection = self.connection_to_database()
		connection_cursor = connection.cursor()
		sql = "update users set user_id = (%s) where user_id = 266;"
		id_user = (2,)
		connection_cursor.execute(sql,id_user)
		connection.commit()
		print("[",connection_cursor.rowcount,"] row(s) updated.")
		connection.close()

	def remove_record(self):
		conn = self.connection_to_database()
		curs = conn.cursor()
		sql = "delete from users where user_id = ('%s')"
		q = (2,)
		curs.execute(sql, q)
		conn.commit()
		print("[",curs.rowcount,"] record(s) removed.")
		conn.close()

cars = cars()
# machine = "Suzuki Fx"
# cars.running(machine)
# cars.brakeing(machine)
# print(cars.connection_to_database())
# cars.show_tables()
# cars.insert_new_record()
cars.fetch_data()
# cars.update_record()
# cars.remove_record()
