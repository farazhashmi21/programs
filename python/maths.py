# maths.py
import math
class Maths:
	def __init__(self):
		pass
	def example(self):
		try:
			print("Python Mathematics")
			# Minimum vs Maximum
			value_range = {24,36,73}
			var = -54.232
			num = 72
			x = min(value_range)
			y = max(value_range)
			p = pow(x,y)
			z = abs(p)
			value_of_pi = math.pi
			square_root_f_pi = math.sqrt(value_of_pi)
			print("Max: ",y)
			print("Min: ",x)
			print("Absoulte: ",z)
			print(x, "to the power", y,"is:",p)
			print("Pi: ",value_of_pi)
			print("Square Root Of ",value_of_pi,":",square_root_f_pi)
		except:
			print("Maths Error")
mat = Maths()
mat.example()
