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
fruits[1] = "Orange"
print(fruits[1])
print(fruits)
fruits[2:4] = ["Melon", "Watermelon", "Pumpkin"]
print(fruits)
print(len(fruits))
fruits.append("Mangos")
print(fruits)
fruits[1:4] = ["a","b",'c',"d","E"]
print(fruits)
fruits.insert(6,"Peach")
print(fruits)
first_list = ['China', 'Pakistan', 'Turkey']
second_list = ["Asia", "Europe","Africa"]
first_list.extend(second_list)
print(first_list)
thirdSet = {"appli","Pi","Cherry"}
second_list.extend(thirdSet)
print(second_list)
second_list.remove("Africa")
print(second_list)
print(fruits)
fruits.pop(1)
print(fruits)
fruits.pop()
print(fruits)
del fruits[4]
print(fruits)
# del fruits # Actually Delete fruits completely, no memory location or as no defined
# print(fruits)
fruits.clear()
print(fruits)
