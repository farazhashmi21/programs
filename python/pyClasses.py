# Python Classes Example.

class pyClass:
	#Python Class: pyClass
	name = "" # Class Variable name.
	desig = "" # Class Variable designation.
	def __init__(self):
		# Class Constructor
		pass # Bypass the Empty Block.
	def get_developer(pakistan, developer_name = "Faraz Hashmi", desig = "Python Developer"):
		# Class Method get_developer() accepts arguments to update class variables.
		pakistan.name = developer_name
		pakistan.desig = desig
	def call_developer(self):
		# Class method for showing values assigned to class variable.
		print("Developer Name: ",self.name)
		print("Developer Designation: ",self.desig)
	def get_user_data(self):
		# Class Method: get_user_data() which actually ask the user for input and the assign that input to class variables.
		self.name = str(input("Enter Developer Name: "))
		self.desig = str(input("Enter Designation: "))


pyc = pyClass()
#pyc.get_developer("Faraz Hashmi","Python Developer")
#print("Type of Variable is ",str(type(pyc))," respectively.")
#pyc.get_developer(get_name,get_designation)
# pyc.get_user_data()
# pyc.call_developer()
pyc.name = "Syed_Muhammad_Faraz_Hashmi"
pyc.desig = "Python_Web_Developer"
pyc.call_developer()
