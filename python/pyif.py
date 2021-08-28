# Python If Else Statement.

class pyif:
	def __init__(self):
		pass
	def example(self):
		a = 3000
		b = 45000
		if a < b:
			print(a)
		if a > b:
			print("Value of a: " + str(a) + ".")
		elif b > a:
			print("Value of b: " + str(b) + ".")
		else:
			print("Both are equal: " + str(a) + " = " + str(b) + ".")
		a = 45000
		b = 45000
		if a < b:
			print("A is smaller.")
		elif b < a:
			print("B is smaller.")
		else:
			print("Both a & b are equal: " + str(a) + " = " + str(b) + ".")
		a = b*a
		b = a * b
		c = print("A value: " + str(a)) if a > b else print("B value: " + str(b)) if b > a else print(str(a) + "+" + str(b))
	def driving_eligible(self):
		license = 4
		age = 28
		if license > 0 and age > 18:
 		  print("You are eligible to drive the car. Drive Safe.")
		elif license == 0 and age > 18:
			print("Get driving license first.")
		else:
			print("Grow up first.")
	def fruit_cart(self):
		cart = "apples"
		if cart == "Strawberries" or cart == "apples":
			print("Bring fruits to home.")
		else:
			print("Return Home when you have fruits basket with you.")
	def ned_admission(self):
		percentage = 58;
		addimission_test_score = 50
		if percentage >= 80:
			if addimission_test_score >= 70:
				print("You are nedian now.")
			else:
				print("Examp Retake.")
		else:
			if percentage >= 60:
				print("Scrunity.")
			else:
				print("Go for 2nd option.")

PyiF = pyif()
PyiF.example()
PyiF.driving_eligible()
PyiF.fruit_cart()
PyiF.ned_admission()
