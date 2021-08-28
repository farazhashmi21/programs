# Python Regular_Expressions.py
import re
class regular_expression:
	def __init__(self):
		pass
	def example(self):
		text = "Pakistan is my country"
		search = re.search("tan",text)
		if search:
			print("Found: ",str(search), "in",text)
		else:
			print("Not Found")

rE = regular_expression()
rE.example()
