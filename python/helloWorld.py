#/usr/bin/python3
import os
import platform as pT
import mysql.connector as msql;
from python_functions import python_functions as pF
class hello:
  def __init__(self, name = 'Python Developer'):
    print("Hello " + str(name) + ", Wellcome to the world of Python Programming.");
  def CreateAFile(self, FileToCreate):
    getFileName = FileToCreate;
    OpenFile = open(getFileName, "w")
    print(str(getFileName) + " File created successfully...")
    OpenFile.close()
  def WriteAFile(self, filename, texttowrite):
    GetFileName = filename
    gettexttowrite = texttowrite
    openafile = open(GetFileName, "a")
    openafile.write(gettexttowrite)
    openafile.close()
  def ReadAFile(self, filetoread):
    getfiletoread = filetoread
    OpenAFileToRead = open(getfiletoread,"rt")
    readtext = OpenAFileToRead.read()
    print(readtext)
    OpenAFileToRead.close()
  def RemoveAFileFromTheServer(self, filetoremove):
    getfiletoremove = filetoremove
    deletestatus = os.path.exists(getfiletoremove)
    if deletestatus == True:
      os.remove(getfiletoremove)
      print(str(getfiletoremove) + " has been deleted from the server successfuly.")
    else:
      print(str(getfiletoremove) + " File Not Found!")
  def python_module_trying(self):
    Car_Name = "Toyota Hilux"
    fnc = pF()
    fnc.set_car_name(Car_Name)
    car = fnc.get_car_name()
    print(car)
  def connect_db(pak):
    host = "localhost"
    user_name = "developerfarazhashmi"
    password = "uV67#*dB92%$dE"
    db = "pythonweb"
    db_connection = msql.connect(host = host, username = user_name, password = password, database = db)
    return db_connection

  def create_table(pak):
    conn = pak.connect_db()
    cur = conn.cursor()
    sql_query = "create table cars(car_id int(11) not null primary key auto_increment, car_model varchar(200), car_year int(4), car_manufacturers varchar(200), user_id int(11) not null);"
    cur.execute(sql_query)
    conn.close()
  def show_tables(self):
    conn = self.connect_db()
    cur = conn.cursor()
    sql = "show tables;"
    cur.execute(sql)
    res = cur.fetchall()
    for r in res:
      print(r)
    conn.close()
  def new_record(pak):
    conn = pak.connect_db()
    cur = conn.cursor()
    sql = "insert into cars(car_model, car_year, car_manufacturers, user_id) value('M5', '2021','BMW', 1)"
    cur.execute(sql)
    conn.commit()
    conn.close()
  def show_record(elf):
    conn = elf.connect_db()
    cur = conn.cursor()
    sql = "select * from cars;"
    cur.execute(sql)
    res = cur.fetchall()
    for r in res:
      print(r)
      conn.close()
  def update_record(pak):
    conn = pak.connect_db()
    cur = conn.cursor()
    sql = "update cars set car_model = 'Aventador', car_manufacturers = 'Lamborghini' where user_id = 1;"
    cur.execute(sql)
    conn.commit()
    conn.close()
  def fetch_user_record(pak):
    conn = pak.connect_db()
    cur = conn.cursor()
    sql = "select car_manufacturers, car_model, car_year, user_name from cars inner join users where cars.user_id = users.user_id;"
    cur.execute(sql)
    result = cur.fetchone()
    statement = (str(result[3]) + " have " + str(result[0]) + " " + str(result[1]) + " " + str(result[2]) + " model.")
    print(statement)

H = hello();
P = hello("Hashmi Developer");
# print(type(H.connect_db()))
# P.create_table()
# H.show_tables()
# P.new_record()
# H.show_record()
# P.update_record()
# P.show_record()
H.fetch_user_record()
