#!/usr/bin/python
import os
# Indentation in Python is very important it justify the block of code.

class ind:
    def Indentation(self):
        num = 50
        var = 200
        answer = 0
        if num > var:
            answer = str(num) + " is greater than " + str(var) + "."
#            print(answer)
        else:
            answer = str(var) + " is greater."
        return answer
    def fileCreate(self, filenametocreate):
        getFileToCreate = filenametocreate
        openNewFile = open(getFileToCreate,"w")
        if os.path.exists(getFileToCreate):
            print(getFileToCreate + " has been created for you on the server successfully.")
        else:
            print("Something went wrong, "+getFileToCreate+" cannot be created.")
        openNewFile.close()
    def fileWrite(self, filetowrite, texttowrite):
        getFileToWrite = filetowrite
        getTextToWrite = texttowrite + "\n"
        if os.path.exists(getFileToWrite):
            openFileForWriting = open(getFileToWrite, "a")
            openFileForWriting.write(getTextToWrite)
            print(getFileToWrite + " has been updated successfully.")
            openFileForWriting.close()
        else:
            print("Some error occur while writing to the file: "+getTextToWrite)
    def filetoRead(self, filetoread):
        getFileToRead = filetoread
        if os.path.exists(getFileToRead):
            openfileforreading = open(getFileToRead,"r")
            readTextFromFile = openfileforreading.read()
            print(readTextFromFile)
            openfileforreading.close()
        else:
            print(getFileToRead+" file not found!")
    def removeTheFile(self, file_to_remove):
        getFileToRemove = file_to_remove
        if os.path.exists(getFileToRemove):
            os.remove(getFileToRemove)
        else:
            print("<"+getFileToRemove + "> file not found!")

n = ind()
sampleFileForTesting = "index.txt"
sampleText = n.Indentation()
n.Indentation()
n.fileCreate(sampleFileForTesting)
n.fileWrite(sampleFileForTesting, sampleText)
n.filetoRead(sampleFileForTesting)
#n.removeTheFile(sampleFileForTesting)

