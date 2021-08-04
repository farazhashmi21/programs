#/usr/bin/python3

# Python Programming Variables Example.

import random
import os

class vari:
    def __init__(self):
        print("Python Variables:")
    def pythonVariables(self):
        x = 5
        y = "Jone"
        print(x)
        print(y)

        x = True
        print(x)
        y = str(46.64)
        print(y)
        #x = int(y)
        print(type(y))
        p = 'Pakistan'
        print(p)
        K = "Karachi"
        print(K)
        stat = "I lived in " + K + ", " + p + "."
        print(stat)

        #Unpacking Variables

        x, y, z = ['a','b','c']
        print(x)
        print(y)
        print(z)
        one = "I am learning"
        two = "Python Programming Language"
        print(one + " " + two + ".")

        one = 46.53
        two = 45.32
        sum = one + two
        print(sum)

        new = "Love"
        def displ():
          print(new + " Pakistan")
        displ()
        def add():
          x, y = 20, 40
          sum = x + y
          return sum
        print("Answer: " + str(add()) + ".")

        var = 20
        num = 34
        def multi():
          global var
          var = 2
          global num
          num  = 8
          result = var + num
          print(result)
        multi()

        def PythonNumerics():
          x = 12 #int variable.
          y = 43.34 # Float variable.
          z = 10j # Complex variable.
          print(str(x) + " = " + str(type(x)))
          print(str(y) + " = " + str(type(y)))
          print(str(z) + " = " + str(type(z)))
          p = (12e2)
          print(str(p) + " = " + str(type(p)))
          Q = z*x
          print(str(Q) + " = " + str(type(Q)))
          X = float(x)
          Y = complex(y)
          Z = int(y)
          print(str(X) + " = " + str(type(X)))
          print(str(Y) + " = " + str(type(Y)))
          print(str(Z) + " = " + str(type(Z)))
          rand = random.randrange(1, 100)
          print(str(rand))

        # PythonNumerics()

        def pythonSrings():
            greetings = "Hello World";
            print(greetings)
            gR = """This
                        Is
                            Also
                                A
                                    String"""
            print(gR)
            print(gR[3])
        # pythonSrings();
        def stringLoop():
            greetings = "Hello World"
            for pakistan in greetings:
                print(pakistan)
            PakistanLength = len(greetings)
            print(PakistanLength)
            checkWord = ("World" in greetings)
            if checkWord == True:
                print(greetings)
            else:
                print("Nop!")
            checkWord = "PiP" not in greetings
            if checkWord == False:
                print(greetings)
            else:
                print("NOP!")
        stringLoop()

        j = "Pakistan"
        p = j[2:8]
        print(p)
        k = j[:3]
        print(k)
        u = j[2:]
        print(u)
        w = j[-8:-2]
        print(w)
        upperCase = j.upper()
        print(upperCase)
        lowerCase = j.lower()
        print(lowerCase)
        e = " Hello Pakistan "
        q = e.strip()
        print(q)
        zx = "Pakstan - Zindabad"
        xz = zx.split("-")
        print(xz)
        a = "Pakistan"
        b = "Zindabad"
        c = a + b
        print(a + " + " + b + " = " + c +".")
        var = "Required age is {} years";
        aG = 72
        tex = var.format(aG)
        print(tex)
        a,b,c = 12, 16, 24;
        eR = "Number {2}, Number {0} and Number {1}";
        tex = eR.format(a,b,c)
        print(tex)
        tex = "I am \"The Developer\" in Python Programming"
        print(tex)
        tex = (20 > 10)
        print(tex)
        if tex:
            print("Yea 20 is greater than 10.")
        else:
            print("Nop! That's not correct.")
        vari = "Pakistan"
        print(bool(15))
        yea = 46.64
        aey = isinstance(yea,float)
        print(aey)
        x = y = [2,3,4]
        print(x in y)
        x = y = [24]
        print(x not in y)
        x = y = 24
        print(x is y)
        y = 77
        print(y is not x)

    def Create_A_File(self, filenametocreate):
        get_file_name = filenametocreate
        open_new_file = open(get_file_name, "w")
        check_file_status = os.path.exists(get_file_name)
        if check_file_status:
            print(str(get_file_name) + " has been created for you.")
        else:
            print("File cannot be created.")
        open_new_file.close()
    
    def Write_A_File(self, filenametowrite, texttowrite):
        get_file_to_write = filenametowrite
        get_text_to_write = texttowrite + "\n"
        open_file_for_writing = open(get_file_to_write, "a")
        open_file_for_writing.write(get_text_to_write)
        open_file_for_writing.close()
        print(str(get_file_to_write) + " has been updated.")

    def Read_A_File(self, filetoread):
        get_file_to_read = filetoread
        open_file_for_reading = open(get_file_to_read, "r")
        get_file_content = open_file_for_reading.read()
        open_file_for_reading.close()
        print(get_file_content)

    def Remove_A_File(self, filetoremove):
        get_file_to_remove = filetoremove
        file_exists = os.path.exists(get_file_to_remove)
        if file_exists:
            os.remove(get_file_to_remove)
        else:
            print(str(get_file_to_remove) + " not found!")


v = vari()
sampleFile = "sample.txt"
# v.Create_A_File(sampleFile)
# v.Write_A_File(sampleFile, sampleFile)
# v.Read_A_File(sampleFile)
# v.Remove_A_File(sampleFile)
v.pythonVariables()
