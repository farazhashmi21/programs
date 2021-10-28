# budgetCalculator.py

import sys
class budgetCalculator:
  costPerMonth = 0.00
  billedAnually = 0.00
  conversionRate = 0.00
  totalPayingPrice = 0.00
  costInPKR = 0.00
  def __init__(self):
    print("Hello Universe")
  def budgetProgram(self, cPM = 0.00, bA = 0.00, cR = 0.00):
    try:
      self.costPerMonth = cPM
      self.billedAnually = bA
      self.conversionRate = cR
      self.totalPayingPrice = float((self.costPerMonth * self.billedAnually))
      self.costInPKR = float((self.totalPayingPrice * self.conversionRate))
      print("The total Price is: "+(str(self.totalPayingPrice))+".")
      print("Cost in PKR is: "+(str(self.costInPKR))+".")
    except:
      print(str(sys.exc_info()[1]))
    finally:
      print("Bye Bye...")
      exit()
bC = budgetCalculator()
bC.budgetProgram(5.00,12.00, 150.00)

