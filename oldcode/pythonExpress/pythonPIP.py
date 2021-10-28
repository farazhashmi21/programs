# Python PIP: pythonPIP.py

import camelcase

cC = camelcase.CamelCase()

text = "hello universe";

print("Before: "+text)
print("Now: "+cC.hump(text))

