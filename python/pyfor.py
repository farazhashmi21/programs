# Python For Loop Example.

class pyfor:
  def __init__(self):
    pass
  def get_input_from_user(self):
    user_enter_number = input("Enter any number: ")
    return user_enter_number
  def example(self):
    golden_words = "I Love You"
    for gw in golden_words:
      print(gw)
    adjective = ["red","big","tasty"]
    fruits = ["apple","banana","cherry"]
    for a in adjective:
      for f in fruits:
        print(a,f)
  def learn_tavle(self, number):
    get_number = int(number)
    for c in range(1,13):
      table = (get_number * c)
      print(str(get_number)," * ",str(c)," = ", str(table))
    else:
      print("Learn the table of ",str(get_number),".")
pyf = pyfor()
pyf.example()
#pyf.learn_tavle(pyf.get_input_from_user())

