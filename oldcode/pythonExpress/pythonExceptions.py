# pythonExceptions.py

import sys
try:
  x = "Python Developer..."
  print(xE)
except:
  makeError = sys.exc_info()
  for Er in makeError:
    print("Errrr: "+(str(Er))+".")
else:
  print("ALL IS WELL...")
finally:
  print("BYE BYE...")
  exit()

