import sys, mysql.connector
class pythonDBInsert:
	def displ(self, name):
		getName = name
		greetings = "Hello "+str(name)
		return greetings

pDBI = pythonDBInsert()
pDBI.displ("Rose")
