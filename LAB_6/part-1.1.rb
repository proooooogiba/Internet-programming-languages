x = 1
step = 10**(-3)
final = 2
number_of_steps = 0
length = 0

while (x < final)
    number_of_steps += 1
    length += Math.sqrt((step)**2 + (Math.log(x).abs - Math.log(x + step).abs)**2)
    x += step
end

puts number_of_steps
puts length
