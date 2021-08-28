# Python Iterator

import platform
class python_iterator:
	def __init__(self):
		print("You are using Python",str(platform.python_version()), "on Platform",str(platform.version()))
	def example(self):
		fruits = ["apples","Bananas", "Cherries"]
		iT = iter(fruits)
		print(type(fruits))
		print(type(iT))
		print(next(iT))
		print(next(iT))
		print(next(iT))
		my_country = "Pakistan Zindabad 1947"
		cN = iter(my_country)
		getLen = len(my_country)
		for i in range(getLen):
			print(next(cN))
		print(my_country)
eee = python_iterator()
eee.example()