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

pT = pythonTuple()
pT.tuple_example()

