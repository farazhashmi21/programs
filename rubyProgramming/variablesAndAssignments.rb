greeting = "Hello World"
puts(greeting)
developerName = "Syed Muhammad Faraz Hashmi"
puts(greeting + " " + developerName)
greeting = "Hello "
puts(greeting + "Respected " + developerName + "Sir.")
var = 24.42
num = 36.63
result = var + num
puts(result)
puts "The sum of " + var.to_s() + " + " + num.to_s() + " = " + result.to_s() + " respectively."
t = num.to_i()
puts(t)
resCorrect = (t+2)
resWrong = t.to_s() + "2"
puts(t.to_s()+'2')
puts(t.to_s() + " + 2 = " + resCorrect.to_s() + ", or "+t.to_s() + " + 2 = " + (resWrong)+ "?")
resRES = resCorrect.to_f() * resWrong.to_f()
puts("New answer "+ resCorrect.to_s() + " * " + resWrong.to_s() + " = " + resRES.to_s() + " respectively.")
puts("Float value of "+greeting.to_s() + " = " + (greeting.to_f()).to_s() + " respectively.")
puts("Integer value of " + greeting.to_s() + " = " + (greeting.to_i).to_s() + " respectively.")
puts("Enter value: ")
v = gets()
puts("You have entered: "+v.to_s() + " to the console.")
v = gets.chomp()
puts(v.to_s() + " has been typed on the console by the user.")
