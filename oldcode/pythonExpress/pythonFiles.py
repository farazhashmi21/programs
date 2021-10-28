# pythonFiles.py

import sys
import os
try:
#fle = "testFile.txt"
#mde = "rt"

#f = open(fle,mde)
#print(f.read()) # Read complete File (From START to till the END).
#print("\nTwo letters Only\n")
#print(f.read(2)) # Read TWO (2) letters.
#print(f.readline()) # Read only one (1) line.

#for q in f:
  #print(q)

#fileName = "testFile.txt"
#fileMode = "w"

#eX = open(fileName,fileMode)
#eX.write(fileName+"\n");
#eX = open(fileName,"rt")
#print(eX.read())

  Tea = "rocks.txt"
  Coffee = "test"
  #uI = open(Tea,"x")
  #Ui = open(Tea,"w") # No Error Will Raise
  #UI = (open(Tea,"a")) # No Error Will Raise
  if os.path.exists(Tea):
    os.remove(Tea)
  else:
    print(str(Tea)+" file does not exist!")
  if os.path.exists(Coffee):
    os.rmdir(Coffee)
    print(str(Coffee)+" folder has been removed.")
  else:
    print(str(Coffee)+" folder does not exists.")
except:
  getError = (str(sys.exc_info()[1]))
  print("Errr: "+(getError)+".")
finally:
  print("See You")
  exit()

