# Python Functions Example.
from python_functions import python_functions as pf
class functions:
  def __init__(self):
    print("Hello Python Functions: ")
    # pass
  def tri_recursion(self, kariable):
    print("Recursion Example")
    getKariable = kariable
    result = 0
    if getKariable > 0:
      result = getKariable + (tri_recursion(getKariable - 1))
      print("We get: ",result)
    else:
      result = 0
      return result
  def my_function(self,*kids):
    print("The youngest child is: " + str(kids[3]) + ".")
  def function_try(self, **friends):
    getLen = len(friends)
    if getLen > 0:
      print("Total friends: ", str(getLen))
      print("There are: ")
      for f in friends:
        print(str(f)," = ",str(friends[f]))
    else:
      print("There are no friends","total count: ",getLen)
  def lambda_function(self, any_number = 0):
    get_any_number = any_number
    x = lambda a : a * a
    return x(get_any_number)
  def addition(self,*number):
    result = 0
    result = lambda a,b: a*b
    return result(*number)


funct = functions()
# funct.tri_recursion(10)
funct.my_function("a","b","c","d","e")
funct.function_try(f1 = "a", f2 = "b",f3 = "c",z4 = "zk")
