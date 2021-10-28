# anagram_palindrome.py
#
# Write a function which accepts an input word and returns true or false
# if there exists an anagram of that input word that is a palindrome.

# O(n) => linear
# O(1) => constant

# palindrome : is a string that read the same from front to back
# and back to front : noon, eye,

# Anagram of "cat" => "tac", "act", "tca"...

# to check for palindrome: we compared the first character to the last character
# and the second character to second last character and so until we can to the middle
# for string that have odd character, we compared all the character until we get
# to the single charcter in the middle

# a
# aotoa : compare first chart "a" to last character "a", then second character "o"
# to second last character "o" and we get to the single character "t" in the middle

# "gtgagtg" : or we can rever the string and check if the character match with the
# orignal string

# now let's write a function that implements the solution concept
def anagram_palindrome(word):
  # this is a brute solution to check if the owrd is a palindrome
  # using python slicing notation to reverse the string and
  # assuming the string does not have space bewteen characters
  return word == word[::-1]

# the run time will be O(n) as the slicing methot has to go throught each character
# of the string and compare both strings.

print(anagram_palindrome("noon"))        ## should return true

print(anagram_palindrome("carrace"))     ## should return true
## "racecar", "carerac", "rcaeacr"

print(anagram_palindrome("cutoo"))       ## should return false
## "otcuo"

print(anagram_palindrome("a"))           ## should return true

print(anagram_palindrome("aotoa"))       ## should return true

print(anagram_palindrome("ddaaa"))       ## should return false
# "daaad" or "adada"
