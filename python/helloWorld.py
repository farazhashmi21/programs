#/usr/bin/python3
import os
class hello:
  def __init__(self, name = 'Python Developer'):
    print("Hello " + str(name) + ", Wellcome to the world of Python Programming.");
  def CreateAFile(self, FileToCreate):
    getFileName = FileToCreate;
    OpenFile = open(getFileName, "w")
    print(str(getFileName) + " File created successfully...")
    OpenFile.close()
  def WriteAFile(self, filename, texttowrite):
    GetFileName = filename
    gettexttowrite = texttowrite
    openafile = open(GetFileName, "a")
    openafile.write(gettexttowrite)
    openafile.close()
  def ReadAFile(self, filetoread):
    getfiletoread = filetoread
    OpenAFileToRead = open(getfiletoread,"rt")
    readtext = OpenAFileToRead.read()
    print(readtext)
    OpenAFileToRead.close()
  def RemoveAFileFromTheServer(self, filetoremove):
    getfiletoremove = filetoremove
    deletestatus = os.path.exists(getfiletoremove)
    if deletestatus == True:
      os.remove(getfiletoremove)
      print(str(getfiletoremove) + " has been deleted from the server successfuly.")
    else:
      print(str(getfiletoremove) + " File Not Found!")


H = hello();
P = hello("Hashmi Developer");

FileNameToManipulate = "TestFile.php"
H.CreateAFile(FileNameToManipulate)
H.WriteAFile(FileNameToManipulate,"<?php echo 'Hello World' ?>")
H.ReadAFile(FileNameToManipulate)
H.RemoveAFileFromTheServer(FileNameToManipulate)
