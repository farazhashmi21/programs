#/usr/bin/python
# functions.py
import datetime
import platform
import os
class functions:
  dicts = {1,2,4,5,6,7,8,9,0}
  def __init__(self):
    print(self)
  def userInput(self, text):
    someText = str(input(text))
    return someText
  def todayTheDateIs(self):
    getDate = (datetime.datetime(2019,2,14))
    makeText = (str(platform.system())+": "+str(getDate.strftime("%A, %B - %d - %Y")))
    return makeText
  def getTheYear(self):
    getDate = datetime.datetime(2019,1,1)
    fetchYear = getDate
    return (fetchYear)
  def letsRead(self, fileName):
    getFile = str(fileName)
    q = open(getFile,"rt")
    print(q.read())
  def letsWrite(self, fieName):
    getFile = str(fieName)
    p = open(getFile,"w")
  def letsUpdate(self, fileName):
    getFile = str(fileName)
    y = open(getFile,"a")
  def letsCreateFile(self, fileName, exte):
    getFile = str(fileName)
    getExtension = str(exte)
    n = open(getFile+getExtension,"x")
  def removeIt(self,fileName):
    getFile = str(fileName)
    os.path.exists(getFile)
  def celsiusToFahrenheit(self):
    temperatureInCelsius = float(userInput("Enter Temperature in Celcius: "))
    ToFahrenheit = ((temperatureInCelsius * (9/5)) + 32)
    print("Temperature in Fahrenheit is "+str(ToFahrenheit))
  def fahrenheitToCelsius(self):
    temperatureInFahrenheit = float(self.userInput("Enter Temperature in fahrenheit: "))
    ToCelsius = (((temperatureInFahrenheit - 32 ) * (9/5)))
    print("Temperature in Celsius is "+str(ToCelsius))
