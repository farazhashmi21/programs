# secondLargest.py
# Arrays

# given an array or a Python list of integers, write a function which takes
# the given array and finds and returns the second largest number in this array.

# given array
numbers_list = [2, 5, 1, 9]

# For this question, you might ask, "could this array be empty?"
# The answer is yes, you should return none in that case. It just means that
# it's an empty value.

# Could this array or Python list have only one element inside it?
# Yes, in that case, second largest should return none as well.
# What if we had, say, two two one. Then second largest should return two.

# one way to approach this question will be to sort the array list in descending
# order (from largest to smallest), pass reverse = true into sort
# Then print the second last element in the array which will be the second largest

# numbers_list = sorted(numbers_list, reverse = True)
# secondlarg = numbers_list[1]
# print("Second largest number is: ", secondlarg)

# now let's write a function that implements the solution concept
def secon_largest(given_Array):
    secondLargestNumber = None
    # check if array is empty
    if not given_Array:
        print("The number list is empty and the second largest number is: ", secondLargestNumber)
    # check if array has only one item
    elif len(given_Array) == 1:
        print("The number list has only one item and the second largest number is: ", secondLargestNumber)
    else:
        sortedgivenArray = sorted(given_Array, reverse = True)
        secondLargestNumber = sortedgivenArray[1]
        # print the last item on the list
        # the last item can be find by pass index -1
        #print("The smallest number in the list is: ", sortedgivenArray[-1])
        #print("The largest number in the array list is: ", sortedgivenArray[0])

    return secondLargestNumber

print("The second largest number in the list is: ", secon_largest([]))
# should print "None" as second largest number

print("The second largest number in the list is: ", secon_largest([3]))
# should print "None" as second largest number

print("The second largest number in the list is: ", secon_largest([1, 2, 2]))
# should print 2 as second largest number

print("The second largest number in the list is: ", secon_largest(numbers_list))
# should print 5 as second largest number

print("The second largest number in the list is: ", secon_largest([-3, -5, -2]))
# should print -3 as second largest number

print("The second largest number in the list is: ", secon_largest([9, 3, 5, 8, 4]))
# should print 8 as second largest number

