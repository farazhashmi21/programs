# File: pythonRegex.py

import re

class pythonRegex:
  def __init__(self):
    print("Hello World")
  def tryRegex(self):
    text = "Last night there was a little shower of rain."
    srch = re.search("shower{1}",text)
    print(srch)
    print(srch.span())
    print(srch.string)
    print(srch.group())
    print(srch.string + ", " + srch.group())
    print(srch.group() + ", " + srch.string)
    srch = re.search("sleet",text)
    print(srch)
pR = pythonRegex()
pR.tryRegex()

