# stringCompare.py
# Given a string, do some operations
# a string in python can be traited a list that store characters
# however, unlike a list, a string is ummutbale. meaning: it can't be changed

# initialiaze a string
a_string = "This is a strig"

print(a_string)

# given a string, letter = "ABCD"
letter = "ABCD"
# print the second character of the string
print("The second character of the letter string is: ", letter[1])

# print each character of the string
for character in letter:
    print(character)

# iterate over each character using the "for i in range()" style
for i in range(len(letter)):
    print(letter[i])

# let's try something more challeging
# write a fucntion that takes two strings and returns "Ture" 
# if the two strings are reverse of each other

# given strings
string_one = "ABCDE"
Strong_two = "EDCBA"

# to check if these string are reverse of each other
# we are going to compare the first character of the first string with
# the last character of the second string and son on until all the charcter 
# are compared to each other and checked for match.

def IsReverse(given_String_one, given_String_two):
    for i in range(len(given_String_one)):
        i_string_two = len(given_String_two) - i - 1
        if given_String_one[i] != given_String_two[i_string_two]:
            return False
    return True

# let try our function
print(IsReverse(string_one, Strong_two))  # should return True
print(IsReverse("ADC", "CDA"))            # should return True
print(IsReverse("DGCF", "CFGD"))          # should return False

# Problem 2
# given two string of numbers
# string1 = "107" and string2 = "87"
# compare the two string and return True is the number in the first string
# is greather than the number in the second string without converting the string
# to Integer

# we will first compare the lenght of both string: if the first string has a lenght
# greather than the second string, then its value is grather the number in the second string

# if both strings have the same lenght, then we'll comapre each character 

string1 = "107" 
string2 = "87"

def IsGreaterThan(givenString1, givenString2):
    if len(givenString1) > len(givenString2):   # string1 lenght greater than string2
        return True
    elif len(givenString1) < len(givenString2): # string1 lenght less than string2
        return False
    elif len(givenString1) == len(givenString2):
        for i in range(len(givenString1)):
            if givenString1[i] == givenString2[i]:
                continue
            elif givenString1[i] < givenString2[i]:
                return False
            else:
                return True
    return False                          # if both number in the strings are equals

print(IsGreaterThan(string1, string2))    # should return True
print(IsGreaterThan("112", "111"))        # should return True
print(IsGreaterThan("56", "467"))         # should return False
print(IsGreaterThan("89", "0"))           # should return True
print(IsGreaterThan("5", "5")) # should return False

