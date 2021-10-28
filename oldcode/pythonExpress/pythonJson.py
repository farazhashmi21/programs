# PythonJson.py

import json
x = '{"name" : "Faraz Hashmi", "Religion" : "Islam", "Designation" : "Software Engineer"}'

y = json.loads(x)

typeOfY = type(y)
typeOfX = type(x)

print("Type of X is "+(str(typeOfX)))
print("Type of Y is "+(str(typeOfY)))

print(y["name"])
print(x)

g = json.dumps(y,indent=4, separators = (".","="), sort_keys = True)
print(type(g))
print(g)

