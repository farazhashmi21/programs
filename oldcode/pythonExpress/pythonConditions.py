# Python COnditions.

def condi():
  a = 600
  b = -600
  if a < b:
    print("B is greater, that is: "+(str(b))+".")
  elif b == a:
    print("A and B are equal, that is: "+(str(a))+" and "+(str(b))+".")
  else:
    print("Check the difference: "+(str(a))+" and "+(str(b)))

# def condiShorthand():
  #print("B is greater, that is: "+(str(b))+".") if a < b print("A and B are equal, that is: "+(str(a))+" and "+(str(b))+".") elif b == a print("Check the difference: "+(str(a))+" and "+(str(b))) else

def spaghetti(): # I have being spaghettied due to spaghetti like coding below.
  a = 100
  b = 50
  c = 400
  if a == b and c > a: # AND operator works only, if both sides (left and right) are TRUE.
    print("C is the KING!, ("+(str(c))+").") # Will not be printed because left condition is FALSE.
  elif c > b or b < a: # OR operator works only, if any one side (left or right) will be TRUE.
    print("C remains inn.") # Will Print because both (left and right) conditions are true.
  else: # Else is used when no other option remain in contact.
    print(str(a)+","+str(b)+","+str(c)) # Condition will not be reached.

