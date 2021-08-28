# Python JSON Example

import json

class json_example:
  def __init__(self):
    pass
  def example(self):
    print("Hello Json Wellcome To Python World.")
    json_data = '{"name" : "Faraz Hashmi","Age" : 22,"Degree" : "BSCS"}'
    json_to_python = json.loads(json_data)
    print("Return Type is ",str(type(json_to_python)),"and values are: ",str(json_to_python))
    python_to_json = json.dumps(json_to_python)
    print("Return Type is: ",str(type(python_to_json)), "and values are: ",str(python_to_json))

jE = json_example()
jE.example()
