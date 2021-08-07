# Python Lists:
import os
def pyLists():
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
#pyLists()

# Create A File:
def CreateAFile(filenametocreate):
  getfilenametocreate = filenametocreate
  openanewfile = open(getfilenametocreate, "w")
  if os.path.exists(getfilenametocreate):
    print(str(getfilenametocreate) + " file has been created for you successfully.")
    openanewfile.close()

# Write a Fie:
def WriteAFile(filetowrite, texttowrite):
  get_file_to_write = filetowrite
  write_file = open(get_file_to_write, "a")
  get_text_to_write = texttowrite
  write_file.write(get_text_to_write)
  print(str(get_file_to_write) + " file has been updated.")
  write_file.close();

# Read A File:
def ReadAFile(filetoread):
  get_file_to_read = filetoread
  open_file_for_reading = open(get_file_to_read,"r")
  if os.path.exists(get_file_to_read):
    fetch_text = open_file_for_reading.read()
    print(fetch_text)
  else:
    print(str(get_file_to_read) + " not found.")
  open_file_for_reading.close()

# Remove A File:
def RemoveAFile(filetoremove):
  get_file_to_remove = filetoremove
  if os.path.exists(get_file_to_remove):
    os.remove(get_file_to_remove)
    print(str(get_file_to_remove) + " file has been removed.")
  else:
    print(str(get_file_to_remove) + " file not found")
def loop_list():
  print("FOR loop Example:")
  fruits = ['apple', 'mango', 'orange']
  for fruit in fruits:
    print(fruit)
def loop_through_while():
  print("WHILE loop example")
  fruits_basket = ['apple','mango','grapes']
  i = 0
  quantity = len(fruits_basket)
  while i < quantity:
    print(fruits_basket[i])
    i = i + 1

#sampleFileName = "TestFile.txt"
#sampleTextToWrite = "#" + sampleFileName
#CreateAFile(sampleFileName)
#WriteAFile(sampleFileName, sampleTextToWrite)
#ReadAFile(sampleFileName)
#RemoveAFile(sampleFileName)

loop_list()
loop_through_while()
