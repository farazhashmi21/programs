# Python Dictionaries

class python_dictionary:
	def __init__(self):
		pass
	def example(self):
		cars = {
		"Model": "FX",
		"Year": 1989,
		"Manufacture": "Suzuki",
		"Engine Type": "Patrol",
		"Color": "Blue"
		}
		print(cars)
		print("Dictionary Length: " + str(len(cars)))
		print("Variable Type: " + str(type(cars)) + ".")
		print("Engine Type:" + str(cars["Engine Type"]) + ".")
		print("Model Year: " + str(cars.get("Year")) + ".")
		print("Get All Keys: " + str(cars.keys()) + ".")
		print("Get All Cars: " + str(cars.values()))
		cars["Color"] = "White"
		print("New Color: " + str(cars["Color"]) + ".")
		cars["interior"] = "Beige Color"
		print("Full Details: " + str(cars) + ".")
		print("All Items: " + str(cars.items()) + ".")
		if "Model" in cars:
			print("All cars we have: " + str(cars) + " respectively.")
		for c in cars:
		  print(str(c) + " = " + str(cars[c]))
		newdict = cars.copy()
		print(newdict)
		thrise = dict(newdict)
		print(str(thrise))

pd = python_dictionary()
pd.example()
