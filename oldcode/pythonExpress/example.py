import functions, sys
class example:
	def __init__(self):
		print("Python Example")
	def tri_recursion(self, k):
		if(k>0):
			result = (k+int((self.tri_recursion(k-1))))
			print(result)
		else:
			result = 0
			return result
		#print("\n\nRecursion Example Results")
		#tri_recursion(6)

try:
	e = example()
	e.tri_recursion(94)
except:
	print("Error Occur: "+str(sys.exc_info()[1])+".")