def addition(var = 0.00, war = 0.00):
  try:
    getVar = (float(var))
    getWar = (float(war))
    result = (lambda gV, gW : gV + gW)
  except:
    print("Error Occur!!!")
  return (result(getVar, getWar))
def substraction(var = 0.00, war = 0.00):
  getVar = (float(var))
  getWar = (float(war))
  result = (lambda gV, gW : gW - gV )
  return (result(getVar, getWar))
def multiplication(var = 0.00, war = 0.00):
  getVar = (float(var))
  getWar = (float(war))
  result = (lambda gV, gW : gV * gW)
  return (result(getVar, getWar))
def division(var = 0.00, war = 0.00):
  getVar = (float(var))
  getWar = (float(war))
  result = (lambda gV, gW : gV / gW)
  return (result(getVar, getWar))
def remainder(var = 0.00, war = 0.00):
  getVar = (float(var))
  getWar = (float(war))
  result = (lambda gV, gW : gV % gW)
  return (result(getVar, getWar))

