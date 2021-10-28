# A program to calculate mobile phone balance:
# Balance Recharge.
# Balance Spent.
# Remaining Balance.

def balanceCheck():
  BalanceRecharge = float(input("Enter the recharged balance amount: ")) # Example: Rs. 100
  RemainingBalance = float(input("Enter the amount of current balance: ")) # Example: Rs. 50
  BalanceSpent = (BalanceRecharge - RemainingBalance)
  makeStatement = str("You have consumed amount: "+(str(BalanceSpent))+ "/= balance from your previous recharge.")
  print(makeStatement)

balanceCheck() # Function Executed.

