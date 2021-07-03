#/usr/bin/python3

# Python Programming Variables Example.

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

