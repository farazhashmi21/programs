# Python File CURD Operations:

import os

def CreateAFile(fileName):
	fN = fileName
	fL = open(fN, "x")
	print("File created successfully")
	fL.close()

def ReadAFile(fileName):
	getFile = fileName
	print("File Reading: " + str(getFile) + ".")
	readFile = open(getFile, "rt")
	print(readFile.read())
	readFile.close()

def WriteAFile(fileName, textToWrite):
	fileToEdit = fileName
	writeFile = open(fileToEdit, 'a')
	writeFile.write(textToWrite);
	writeFile.close()

def removeAFile(fileToRemove):
	getF = fileToRemove
	if os.path.exists(getF):
		os.remove(getF)
		print("\"" + str(getF) + "\" removed successfully.")
	else:
		print("No file of named \"" + str(getF) + "\" found!")


fi = "testFile.txt"
WriteToFile = "Learning Python Language"
CreateAFile(fi);
WriteAFile(fi, WriteToFile)
ReadAFile(fi)
removeAFile(fi)
