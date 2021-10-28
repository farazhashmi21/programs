# hashTable.py
# Dictionary in python are also refered to as hash table in other languages like java

# initialize a dictionary
a_dict = {'FirstName': 'jacqueline', 'LastName': 'fernandez', 'age': 288, 'year': 2019}
print(a_dict)

# retrive value from a key
print("We are in the year: ", a_dict['year'])

# add a new key and value
a_dict['city'] = 'doha'
a_dict['Zipcode'] = 22550
print(a_dict)

# given a list of names
# write a function that finds a name that appears twice in that list
a_dict_list = {'mark', 'tom', 'jim', 'tony', 'tom', 'frank'}

def repeatedName(given_list):
  dictionary_name = {}
  for name in given_list:
    if name in dictionary_name:
      return name
    else:
      dictionary_name[name] = 1
  return 'There is no name that appears twice'

print(repeatedName(a_dict_list))

# given an array of numbers, find a pair of number that add up to 10
# The function should return or print out the pair of number that add up to 10

# we will resolve this sulation with a run time of O(n)

# for this question, we are going to traverse the list and store each item in the
# dictionary. if any item in the dictionary added to another one equal to 10.
# we will print and return those 2 number

# now let's write a function that implements the solution concept
def IsPairOf10 (given_array):
  # this hash table will store the number we have already seen while traversing the array
  seen_numbers = {}
  for item in given_array:
    if (10 - item) in seen_numbers:
      print('The following pair of number in array adds up to 10: ' + str(item) + ' and ' + str(10 - item))
      return
    else:
      seen_numbers[item] = 'number in the list'
  print('there is no a pair of numbers that adds up to 10')

# let's test the function
list1 = [4, 5, 7, 3]
list2 = [5, 7, 0, 6, 5]
list3 = [9, 2, 8, 1, 3]
list4 = [-12, 4, -67, 2]

print(IsPairOf10(list1)) # should return 5
print(IsPairOf10(list2)) # should return 6
print(IsPairOf10(list3)) # should return 8
print(IsPairOf10(list4)) # should return -12
