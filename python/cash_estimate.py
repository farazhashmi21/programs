# Project Name: Cash_Estimate.py
# Slogan: COnfigre You Cash.

class Cash_Estimate:
	def __init__(self):
		pass
	def calculate(self):
	  amount = float(input("Enter The Full Amount You Have: "))
	  year_duration = float(input("Enter Total Years: "))
	  months_in_a_year = float(12)
	  per_year_cost = float((amount/year_duration))
	  calculate_per_month_expense = float((per_year_cost/months_in_a_year))
	  option = int(input("Enter Option: \n 1: For Month Calculation.\n 2: For Year Calculation.\n 3: For Month And Year Calculation. \n Enter choice no.: "))
	  if option == 1:
	  	print("Amount for Per Month is: ",str(calculate_per_month_expense),"/=")
	  elif option == 2:
	  	print("Amount for Per Year is: ",str(per_year_cost),"/=")
	  elif option == 3:
	  	print("Amount for Per Month is: ",str(calculate_per_month_expense),"/=")
	  	print("Amount for Per Year is: ",str(per_year_cost),"/=")
	  else:
	  	print("Unknown Option")
	def displ(self):
		try: self.calculate()
		except: print("Nasty Error!")
		finally: print("Thankyou For Using Bye.")

cE = Cash_Estimate()
cE.displ()
