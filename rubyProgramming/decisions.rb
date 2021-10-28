puts 2 > 1
s = 4
y = 6
puts y < s
puts "cats" > "dogs"
puts "cats" < "dogs"
s = 2
y = 8
if s < y
    puts s
end
s = 6
y = s * 19
if s < y
    puts s
else
    puts y
end
s = 26
y = 24
#while s > y
#    puts s
#end
name = ""
developer = "FARAZ HASHMI"
puts "Enter you SWEET name: "
name = (gets().chomp().upcase())
while name != developer
    puts "Enter you name"
    name = gets().chomp().upcase()
end
puts "Hello \"Developer "+name+"\", Have A Nice Day."