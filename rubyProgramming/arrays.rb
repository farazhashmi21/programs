blank = []
boolean = [true, false]
letters = ["Hello","World"]
numbers = [24,36]
iceCream = "Mago"
allOfThem = [numbers,iceCream,boolean,blank,letters]
puts("Whole Array: ")
puts(allOfThem) # Prints all values in an array.
puts("\n")
puts("Array value @ index 2")
puts(allOfThem[2]) # Prints Value Indexed 2
puts("\n")
puts("Array inside Array value")
puts(allOfThem[4][0]) # Prints Array inside Array Value.
getArrayLength = allOfThem.length()
puts("\n")
puts("Array Size: "+(getArrayLength.to_s())+" elements.")
courses = ["English","Maths","Physics"]
puts("We offer Tutions for:")
courses.each do |cou|
    puts(cou)
end
3.times do
    puts("Hip-Hip-Dance!")
end
puts("Default Array")
n = [1,2,3]
puts(n)
puts("Array Length: "+(n.length).to_s()+" elements.")
puts("Array Increase")
n.push(4,5,6)
puts(n)
puts("Array Length: "+(n.length).to_s()+" elements.")
puts("Array Decreased")
puts((n.pop()).to_s()+" removed from the array.")
puts("Updated Array")
puts(n)
puts("Array Length: "+(n.length).to_s()+" elements.")
puts("Array Last Index Value: "+(n.last).to_s())
