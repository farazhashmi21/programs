# Python Tuple.

class pythonTuple:
    def tuple_example(self):
        fruits = ("apple","peach","orange");
        for f in fruits:
            print(f)
        fruits = ("a","b","c","u","a")
        print(fruits)
        fruitsLength = len(fruits)
        print("Fruits Length: " + str(fruitsLength) + " elements.")
        fruit = ("Banana",)
        print(str(fruit) + " has type: " + str(type(fruit)))
        fruit = ("Cherry")
        print(str(fruit) + " has type: " + str(type(fruit)))
        tuple_with_different_type_of_values = ("a",1,2.21,True, 24j)
        for twdtov in tuple_with_different_type_of_values:
            print(str(twdtov) + " has type: " + str(type(twdtov)))
        lentils= tuple(("Red Lentil","Green Lentil","Yello Lentil"))
        for lent in lentils:
            print(lent)
        pick_one = lentils[2]
        print(pick_one)
        print(lentils[-2])
        print(lentils[1:])
        if "Red Lentil" in lentils:
            print("Yes it is present @ index no. " + str(lentils.index("Red Lentil")))
        else:
            print("Red Lentil is not found in lentils.")
            print("The values are: " + str(lentils))
        tuple_into_list = list(lentils)
        tuple_into_list.append("Pink")
        print(type(tuple_into_list))
        print(str(tuple_into_list))
        list_into_tuple = tuple(tuple_into_list)
        print(type(list_into_tuple))
        print(str(list_into_tuple))
        tupleA = (1,2,3)
        tupleB = (4,5,6)
        tupleSum = (tupleA + tupleB)
        print(str(tupleA) + " + " + str(tupleB) + " = " + str(tupleSum) + ".")
        b = ('a','b','c') # Packing
        print(type(b))
        (d,e,f) = b # Unpacking
        print(d)
        print(e)
        print(f)
        c = ('a','e','i','o','u')
        print(c)
        (a,b,c,*d) = c
        print(a)
        print(b)
        print(c)
        print(d)
        z = ('a','b','c') 
        (a,*c,b) = z
        print(a)
        print(c)
        print(b)
        tuple_into_four = (tupleSum * 4)
        for tif in tuple_into_four:
            print(tif)

pT = pythonTuple()
pT.tuple_example()

