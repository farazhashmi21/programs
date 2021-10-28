# Python Classes and Objects Example.

class MyClass:
  x = float(26.64)
  def __init__(self, val = 0.00):
    self.x = val
  def greetings(self):
    try:
      print("Enter your name: ")
      getName = input()
      print("Wellcome: "+(str(getName))+".")
    except:
      print("Error Occur!!!")

testObject = MyClass("48.52")
print(testObject.x)
testObject.x = 84.96
print(testObject.x)
del testObject.x
print(testObject.x)
del testObject
print(testObject)
# testObject.greetings()
