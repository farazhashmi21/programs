puts("Task: Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.")

puts("Enter you first name: ")
fName = gets.chomp()
puts("Enter your middle name: ")
mName = gets.chomp()
puts("Enter the your last name:")
lName = gets.chomp()
greet = "Hello " + fName + " " + mName + " " + lName + ", Nice to meet you."
puts(greet)
