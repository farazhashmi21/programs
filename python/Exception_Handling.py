# Exception_Handling.py

class excp:
	def __init(self):
		pass
	def example(self):
		try:
			text = ("Hello World")
			if 0/0:
				raise ZeroDivisionError(text)
		except:
			print("Error Occur: ")
		else:
			print("Execution was fine.")
		finally:
			print("Thankyou for using.")
e = excp()
e.example()
