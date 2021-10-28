# Python Functions.

def pythonFunctionsExample(programmingLanguage = "Python"):
  getprogrammingLanguage = (str(programmingLanguage))
  print(getprogrammingLanguage+" Functions")
def addition(Var, War):
  getVar = (float(Var))
  getWar = (float(War))
  result = str(float((getVar + getWar)))
  return result
def tri_recursion(k = 0):
  getK = (float(k))
  print("Recursion Example:")
  if(getK > 0):
    result = getK+tri_recursion(getK-1)
    print(result)
  else:
    result = (0)
    return (result)
def letsConnect(self,host = 'localhost',username = 'root',password = ''):
  getHost = str(self.host)
  getUsername = str(self.username)
  getPassword = str(self.password)
  connectDB = mysql.connector.connect(getHost, getUsername, getPassword)
  return(self.connectDB)

