# Python Lists:

fruits = ["Mango", "Strwayberry", "Banana"]
print(fruits)
fruits.append("Apple")
print(fruits)
fruits.append("Mango")
print(fruits)
fruits.reverse()
print(fruits)
fruits.pop()
print(fruits)
fruits.sort()
print(fruits)
print("Fruits List Length: "+ str(len(fruits)))
print("Fruits Count: " + str(fruits.count("Strwayberry")))
fruits.append("Strwayberry")
fruits.append("Strwayberry")
print("Fruits Count: " + str(fruits.count("Strwayberry")))
numbers = [12, 36.63, True]
print(numbers)
print(len(numbers))
numbers.append("Pakistan")
print(numbers)
print(len(numbers))
MyCountry = list(("Pakistan","Karachi","North Naizamabad","74700"))
print(MyCountry)

NewList = ["Pakistan", 'China', "Turkey"]
print(NewList[0])
print(NewList[1])
print(NewList[2])
print("Reverse Indexing")
print(NewList[-2])
print(NewList[-1])
print(NewList[-0])

fruits = ["apples", "Oranges","Mangos","Grapes","Bananas","Strawberries","Blueberries","Kiwi"]
FruitS = fruits[-7:-2]
print(fruits)
print(FruitS)
print(fruits[:7])
print(fruits[:-7])
print(fruits[2:5])
if "Strawberries" in fruits:
  print("YES it is present in the list @ position no.: " + str(fruits.index("Strawberries")))
