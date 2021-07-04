#/usr/bin/python3

# Python Programming Variables Example.

import random

x = 5
y = "Jone"
print(x)
print(y)

x = True
print(x)
y = str(46.64)
print(y)
#x = int(y)
print(type(y))
p = 'Pakistan'
print(p)
K = "Karachi"
print(K)
stat = "I lived in " + K + ", " + p + "."
print(stat)

#Unpacking Variables

x, y, z = ['a','b','c']
print(x)
print(y)
print(z)
one = "I am learning"
two = "Python Programming Language"
print(one + " " + two + ".")

one = 46.53
two = 45.32
sum = one + two
print(sum)

new = "Love"
def displ():
  print(new + " Pakistan")
displ()
def add():
  x, y = 20, 40
  sum = x + y
  return sum
print("Answer: " + str(add()) + ".")

var = 20
num = 34
def multi():
  global var
  var = 2
  global num
  num  = 8
  result = var + num
  print(result)
multi()

def PythonNumerics():
  x = 12 #int variable.
  y = 43.34 # Float variable.
  z = 10j # Complex variable.
  print(str(x) + " = " + str(type(x)))
  print(str(y) + " = " + str(type(y)))
  print(str(z) + " = " + str(type(z)))
  p = (12e2)
  print(str(p) + " = " + str(type(p)))
  Q = z*x
  print(str(Q) + " = " + str(type(Q)))
  X = float(x)
  Y = complex(y)
  Z = int(y)
  print(str(X) + " = " + str(type(X)))
  print(str(Y) + " = " + str(type(Y)))
  print(str(Z) + " = " + str(type(Z)))
  rand = random.randrange(1, 100)
  print(str(rand))

PythonNumerics()
