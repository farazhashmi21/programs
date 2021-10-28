# Python Loops.
var = 8
def whileLoop(): # Executes Till The condition is TRUE.
    print("While Loop Example")
    loopCounter = 1
    while loopCounter < 6:
        print("["+(str(loopCounter))+"] = Hello World.")
        loopCounter += 1

# whileLoop() # While Loop Example.

def breakExampleWhileLoop(): # Breaks The Loop Execution, If Certain COndition Matched.
    print("Break Statement Example")
    oO = 1
    while oO <= 11:
        print("["+(str(oO))+"] = Hello World.")
        oO += 1
        if oO == 5:
            break
def continueExampleWhileLoop(): # Skips The Current Iteration and procceed further.
    print("Continue Statement Example")
    u = 0;
    while u < 6:
        u += 1
        if u == 3:
            continue
        print("Value of u: "+(str(u))+".")
def forLoopExample():
  fruits = ["apple","banana","cherry"];
  for x in fruits:
    print(x)
#  for x in "cherry":
#  for x in "banana":
    if "a" in x:
      break
    print(x)
def rangeFunction():
  for q in range(50, 70,5):
    print(q)
def forElseExample(val):
  getVal = int(val)
  for t in range(getVal):
    print("Value of t: "+(str(t))+".")
  else:
    print("Excution Completed.")
def forInnerLoop():
  fruits = ["apple","babnana","cherry"]
  adjective = ["red","big","tasty"]
  for x in adjective:
    for y in fruits:
      print(x,y)
# whileLoop()
# breakExampleWhileLoop()
# continueExampleWhileLoop()
# forLoopExample()
# rangeFunction()
# forElseExample(var)
forInnerLoop()

