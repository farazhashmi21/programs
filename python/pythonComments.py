# This is a Python SIngle Line Comment.
"""
  This
    is
      multiline
        comment.
"""

import os
class PythonFiles:
  def FileCreate(self, enterafilename):
    getfilename = enterafilename
    openafile = open(getfilename, "w")
    if os.path.exists(getfilename):
      print(str(getfilename) +" has been created successfully.")
    else:
      print("Python was unable to create " + str(getfilename) + " file.")
    openafile.close()

  def FileWrite(self, filetowrite, texttowrite):
    getfiletowrite = filetowrite
    gettexttowrite = texttowrite + ";\n"
    openfiletowrite = open(getfiletowrite,"a")
    openfiletowrite.write(gettexttowrite)
    print(str(getfiletowrite) + " file has been updated successfully.")
    openfiletowrite.close()

  def FileRead(self, filenametoread):
    getfiletoread = filenametoread
    if os.path.exists(getfiletoread):
      openfiletoread = open(getfiletoread,"r")
      fetchfiletext = openfiletoread.read()
      print(fetchfiletext)
      openfiletoread.close()
    else:
      print(str(getfiletoread) + " file not found!")

  def FileRemoved(self, filenametoremove):
    getfiletoremove = filenametoremove
    if os.path.exists(getfiletoremove):
      os.remove(getfiletoremove)
      print(str(getfiletoremove) + " has been removed successfully")
    else:
      print(getfiletoremove + " file not found.")

PF = PythonFiles()
sample = "TestFile.txt"
sampleText = "console.log('Hello World.')"
#PF.FileCreate(sample)
#PF.FileWrite(sample,sampleText)
#PF.FileRead(sample)
#PF.FileRemoved(sample)
print("File Name: " + sample)
print("Sample Text: " + sampleText)
