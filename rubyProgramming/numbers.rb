puts(1.86+2.46)
puts(23.12-12.42)
puts(2.2*3.46)
puts(74.85/22.42)
numb = 62.56
vart = 54.24
puts numb ** vart
puts vart ** numb
puts numb ** 0.5
puts vart ** 0.5
puts numb / vart
puts vart / numb
puts numb % vart
puts vart % numb
sumpo = vart - numb
posdp = numb + vart
puts sumpo.abs
puts posdp.abs
puts rand
puts rand(numb)
puts rand(vart)
puts(sumpo ** rand(posdp))
puts(posdp ** rand(sumpo))
puts "Pus Pus: " + posdp.to_s()
puts "Sumpo: " + sumpo.to_s()
nut = rand(sumpo)
puts("First calculation: " + (2 ** rand(nut)).to_s())
catchNumb = rand(posdp)
puts("Second Calculation: " + (2 ** rand(catchNumb)).to_s())
srand = 1776
puts rand(101)
newcalc = (sumpo + posdp)
puts newcalc
srand 0
puts rand(101)
puts "Value of PI: " + (Math::PI).to_s()
puts "Value of Exponent: " + (Math::E).to_s()
exceptionalCalculation = ((Math::PI * Math::E) ** rand(101))
puts "Exceptional Answer: " + (exceptionalCalculation).to_s()
puts Math.sin(Math::PI)
puts Math.cos(Math::PI)
puts Math.tan(Math::PI)
puts Math.log(Math::PI)
puts Math::sqrt(Math::PI)
