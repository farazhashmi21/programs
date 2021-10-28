# Python Database Programming.

# Python
# C = Create
# U = Update
# R = Read
# D = Delete

import sys
import mysql.connector
getHost = ""
getUsername = ""
getPassword = ""
getDatabase = ""
getAuthPlugin=""
def connectDatabase():
  try:
    connectDB = mysql.connector.connect(host= getHost,username = getUsername, password = getPassword, database = getDatabase)
    return connectDB
  except:
    print(str(sys.exc_info()[1]))
def createDatabase(DBN):
  try:
    getDatabaseConnection = connectDatabase()
    getCursor = getDatabaseConnection.cursor()
    query = "create database "+DBN+";"
    getCursor.execute(query)
    print("Database "+DBN+" created successfully")
  except:
    print("Error: "+str(sys.exc_info()[1]))
def createTable(TableName):
  try:
    getCon = connectDatabase()
    cur = getCon.cursor()
    query = "create table "+TableName+";"
    cur.execute(query)
    print("Table "+TableName+" has been created successfully.")
  except:
    print("Error: "+str(sys.exc_info()[1]))
def showDatabase():
  try:
    getDatabaseConnection = connectDatabase()
    getCursor = getDatabaseConnection.cursor()
    query = "show databases;"
    getCursor.execute(query)
    databasList = getCursor.fetchall()
    for dbs in databasList:
      print("Database: "+str(dbs)+";")
  except:
    print("Error: "+str(sys.exc_info()[1]))
def showTables(dbs):
  try:
    getDatabaseConnection = connectDatabase()
    getCursor = getDatabaseConnection.cursor()
    query = "use "+dbs+";"
    getCursor.execute(query)
    query = "show tables"
    getCursor.execute(query)
    databasList = getCursor.fetchall()
    for dbs in databasList:
      print("Database: "+str(dbs)+";")
  except:
    print("Error: "+str(sys.exc_info()[1]))
def insertData(employeeName):
  try:
    getDatabaseConnection = connectDatabase()
    if getDatabaseConnection:
      getCursor = getDatabaseConnection.cursor()
      query = "insert into employees (empName) values (%s)"
      valus = [employeeName]
      getCursor.execute(query, valus)
      getDatabaseConnection.commit()
      print(str(getCursor.rowcount)+" rows inserted")
  except:
    print("Error occur: "+str(sys.exc_info()[1]))
def updataRecord(emplId, emplName):
  try:
    getDatabaseConnection = connectDatabase()
    if getDatabaseConnection:
      getCursor = getDatabaseConnection.cursor()
      query = "update employees set empName = %s where empId = %s;"
      values = [emplName, emplId]
      getCursor.execute(query,values)
      getDatabaseConnection.commit()
      print(str(getCursor.rowcount)+" row(s) updated")
  except:
    print("Error occur: "+str(sys.exc_info()[1]))
def removeRecord(emplId):
  try:
    getDatabaseConnection = connectDatabase()
    if getDatabaseConnection:
      getCursor = getDatabaseConnection.cursor()
      query = "Delete from employees where empId = %s;"
      values = [emplId]
      getCursor.execute(query,values)
      getDatabaseConnection.commit()
      print(str(getCursor.rowcount)+" row(s) updated")
  except:
    print("Error occur: "+str(sys.exc_info()[1]))
    