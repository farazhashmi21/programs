#/usr/bin/python

question = "Enter Your Name: "
getUserName = raw_input(question)
greetings = "Wellcome " + (getUserName) + "."
print(greetings)
print("User Name Length: "+str(len(getUserName)))
print("Greetings Length: "+str(len(greetings)))

