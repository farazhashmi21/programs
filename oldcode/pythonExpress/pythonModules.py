#/usr/bin/python

import platform
from functions import dicts
class pythonModules:
  directories = {}
  w = ""
  def __init__(self):
    self.directories = dir(platform)
    self.w = iter(self.directories)
  def checking(self):
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
    print(next(self.w))
  def loopThrough(self):
    self.directories = dicts
    jT = iter(self.directories)
    print(next(jT))
    print(next(jT))
    print(next(jT))
pM = pythonModules()
# pM.checking()
pM.loopThrough()

