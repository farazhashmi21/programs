# Python Collections Practice Sheet.
def messagePrinter(theMessage):
  getMessage = str(theMessage)
  return getMessage

def fnct():
 print("Python Lists:")
 thisIsAList = ["apple","banana","strawberry"] # Python Lists.
 u = 0;
 print((str(thisIsAList)))
 # print((str(thisIsAList[2]))+ " is my favourite.")
 print("Type is: "+(str(type(thisIsAList))))
 thisIsAList[0] = "grapes"
 print((str(thisIsAList)))
 for i in thisIsAList:
   u += 1
   print("["+(str(u))+"] => "+(str(thisIsAList)))
 if "grapes" in thisIsAList:
   print("YES! Grapes are their in the fruits list.")
 else:
   print("No!, You didn't mention that in it.")
 getListTotalItems = (len(thisIsAList))
 print("TOtal items are: "+(str(getListTotalItems))+".")
 thisIsAList.append("Pumkin")
 print(str(thisIsAList))
 getListTotalItems = (len(thisIsAList))
 print(str(getListTotalItems))
 thisIsAList.insert(0,"Oranges")
 print(str(thisIsAList))
 getListTotalItems = (len(thisIsAList))
 print(str(getListTotalItems))
 thisIsAList.remove(("grapes"))
 getListTotalItems = (len(thisIsAList))
 print(str(getListTotalItems))
 print(str(thisIsAList))
 thisIsAList.pop(1)
 getListTotalItems = (len(thisIsAList))
 print(str(thisIsAList))
 print(str(getListTotalItems))
 thisIsAList.pop()
 getListTotalItems = (len(thisIsAList))
 print(str(thisIsAList))
 print(str(getListTotalItems))
 del thisIsAList[1]
 getListTotalItems = (len(thisIsAList))
 print(str(thisIsAList))
 print(str(getListTotalItems))
 del thisIsAList

def fncy():
 # Code Below have no use because all have been removed already, so comment it.
 # getListTotalItems = (len(thisIsAList))
 # print(str(thisIsAList))
 # print(str(getListTotalItems))

 # myApp = (list(("a","b","c")))
 # print(myApp)

 print("Python Tuples:")

 thisIsTuple = ("Day","Evening","Night") #Python Truple.
 print(thisIsTuple)
 print(type(thisIsTuple))
 print(thisIsTuple[1])
 # thisIsTuple[2] = "Summer"; # Once Defined Tuples are unchangeable.
 print(thisIsTuple[2])
 for x in thisIsTuple:
   print(x)
 if "Day" in thisIsTuple:
   print("Yes! There is a DAY!")
 getTupleLength = (len(thisIsTuple))
 print("Tuple have "+(str(getTupleLength))+" elements.")
 #thisIsTuple[3] = "Summer" # Once Defined, Tuples can not be extended.
 #print(thisIsTuple[3])
 # del thisIsTuple
 # print(thisIsTuple)
 newWay = tuple(("Highway111","Highway222","Highway333"))
 print(newWay)
 letsCount = (1,2,3,4,5,6,7,8,9,0)
 cnt = letsCount.count(5)
 print(cnt)
 cnt = letsCount.index(7)
 print(cnt)

def pythonSets():
  # Python Sets Practice.
  print("Python Sets:")
  thisIsASet = {"Red","Yellow","Green"}   # Python Sets.
  print(thisIsASet)
  print(type(thisIsASet))
  for y in thisIsASet:
    print(y)
  print("Yellow" in thisIsASet)
  thisIsASet.add("Orange")
  print(thisIsASet)
  thisIsASet.update(["Blue","Brown","Black"])
  print(thisIsASet)
  getLength = len(thisIsASet)
  text = ("Length of sets is "+str(getLength)+" elements.")
  print(messagePrinter(text))
  thisIsASet.remove("Orange")
  print(messagePrinter(thisIsASet))
  thisIsASet.discard("Black")
  print(messagePrinter(thisIsASet))
  thisIsASet.clear()
  print(messagePrinter(thisIsASet))
  thisIsASet = set({"Orange","Black"})
  print(messagePrinter(thisIsASet))

# pythonSets()

def pythonDicts():
  thisIsDict = {
    "Model" : "huracan",
    "Brand" : "lamborghini",
    "Year" : 2014
  }
  print(thisIsDict)
  print("The type of dict: " +(str(type(thisIsDict))))
  print("The length of the dict is " +(str(len(thisIsDict)))+" characters.")
  print("I love "+(str(thisIsDict["Brand"]).upper())+" "+(str(thisIsDict["Model"]).upper())+" which is launched in year "+(str(thisIsDict["Year"]))+".")
  print("I like " + (str(thisIsDict.get("Brand")).upper()) + " " + (str(thisIsDict.get("Model")).upper()) + " which was launched in the year " + (str(thisIsDict.get("Year"))) + ".")
  thisIsDict["Model"] = "murcielago"
  print(thisIsDict["Model"].upper())
  print(thisIsDict["Model"].lower())
  for q in thisIsDict: # Prints Keys.
    print(q)
  for v in thisIsDict: ## Print Values.
    print((str(thisIsDict[v])))
  for g in thisIsDict: ## Print Keys & Values.
    print((str(g)) + " => " + (str(thisIsDict[g])) + ".")
  for x, y in thisIsDict.items(): # Print Keys & Values in Professional Way.
    print(x,y)
  z = "Year" in thisIsDict
  if z:
    print("Yea! " + (str(z)) + " there is a year.")
  else:
    print((str(z)))
  thisIsDict["Color"] = "Green"
  print(thisIsDict)
  print(str(len(thisIsDict)))
  testDict = dict(Day="Friday",Month="January",Year=2019)
  print(str(testDict))
  print((str(len(testDict))))
  print((str(type(testDict))))

pythonDicts()

