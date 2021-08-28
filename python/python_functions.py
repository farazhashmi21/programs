# Python Functions Module
import platform as pT
class python_functions:
  __car_name = "" # Private Class Variable
  def __init__(self):
    pass
  def displ(self):
    print("Python Functions")
  def get_car_name(self):
    return self.__car_name
  def set_car_name(self, cN = "car"):
    self.__car_name = cN
  def system_details(self):
    print("System Details: ")
    details = (pT.uname())
    for d in details:
      print(d)
    return details
  def directory_structure(self):
    get_directories = dir(pT)
    return get_directories
  def get_python_version(self):
    print("You are using Python:",str(pT.python_version()),"v")