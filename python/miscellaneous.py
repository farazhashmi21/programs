# miscellaneous.py

import datetime as dT
class Miscellaneous:
	def __init__(self):
		pass
	def example(self):
		try:
			print("Today is: ",dT.datetime.now(),".")
			d = dT.datetime(2021,8,24,18,3,0,0)
			print(d.strftime("%A"),d.strftime("%B"), d.strftime("%d"), d.strftime("%Y"))
		except:
			print("Something Went Wrong.")

misc = Miscellaneous()
misc.example()
