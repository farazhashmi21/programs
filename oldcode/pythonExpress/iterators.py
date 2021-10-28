# Python Iterator.py

class iterators:
# a = 0
  def simpleOne(self):
    try:
      myTuple = ("apple","banana","Orange")
      myIt = iter(myTuple)
      print(next(myIt))
      print(next(myIt))
      print(next(myIt))
      gen = "Professional"
      count = iter(gen)
      print(next(count))
      print(next(count))
      print(next(count))
      print("For loop example")
      # Some counting skips due to about (next()) function execution.
      for p in count: # variable 'p' counts another 'count' variable.
        print(p)
    except:
      print("ERROR!!!")
  def __iter__(self):
    self.a = 1
    return self
  def __next__(self):
    if self.a <= 2:
      x = self.a
      self.a += 1
      return x
    else:
      raise StopIteration

iT = iterators()
# iT.simpleOne()
checkiT = iter(iT)
for q in checkiT:
  print(q)

