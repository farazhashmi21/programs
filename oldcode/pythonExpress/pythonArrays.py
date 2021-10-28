# Python Arrays

class pythonArrays:
  def exec(self):
    try:
      cars = ["Toyota","Suzuki","Honda"]
      print(cars)
      print(type(cars))
      print(cars[0]+str(" corolla altis grande."))
      cars[0] = "Ford"
      print(cars[0]+str(" mustang gt."))
      getLength = (len(cars))
      print("The length of an array is: "+str(getLength)+" elements.")
      print(cars)
      for x in cars:
        print(x)
      cars.append("united bravo")
      for y in cars:
        print(y)
      cars.pop(0)
      print(cars)
      cars.remove("Suzuki")
      print(cars)
    except:
      print("Error Occur!!!")

pA = pythonArrays()
pA.exec()

