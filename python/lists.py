# Python Lists:
import os
#import django
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
def list_without_comprehesion():
  print("List Without Comprehesion")
  fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
  new_list = []
  for a in fruits:
    if "k" in a:
      new_list.append(a)
    for k in new_list:
      print(k)
def list_with_comprehension():
  print("List With Comprehension")
  fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
  newlist = (x for x in fruits if "k" in x)
  for n in newlist:
    print(n)
def sort_list():
  fruits = ["orange", "mango", "kiwi", "pineapple", "banana"]
  print("Fruits without Sort:")
  for f in fruits:
    print(f)
  fruits.sort();
  print("\n")
  print("Fruits after sorting:")
  for sor in fruits:
    print(sor)
def reverse_sort():
    fruits = ["orange", "mango", "kiwi", "pineapple", "banana"]
    print("\n")
    print("Fruits without sorting:")
    for s in fruits:
      print(s)
    print("\n")
    fruits.sort(reverse = True)
    print("Fruits after sorting")
    for p in fruits:
      print(p)
def myF(n):
  return abs(n - 50)

def modify_sorting():
  number_list = [100, 50, 65, 82, 23]
  print("Without sorting:")
  print(number_list)
  number_list.sort(key = myF)
  print(number_list)
def list_copy():
  list_a = ["carrot","potato", "tomato"]
  print("Content of List A:")
  for a in list_a:
    print(a)
  list_b = list_a.copy()
  print("Content of List B:")
  for b in list_b:
    print(b)
  print("Content of List C:")
  list_c = list(list_b)
  list_c.sort(reverse = True)
  for c in list_c:
    print(c)
def join_lists():
  print("\nMethods# 01:\n")
  listA = [1,2,3,4]
  listB = [5,6,7,8]
  sum_list = listA + listB
  print(sum_list)
  print("\nMethod# 02:\n")
  listA.append(listB)
  print(listA)
  print("\nMethod# 03:\n")
  listA.extend(listB)
  print(listA)
  print("\n")

def display_the_dgango_version():
  get_dango_version = django.get_version()
  print("You are using Dango: " + str(get_dgango_version)+"v.")

pyLists()

