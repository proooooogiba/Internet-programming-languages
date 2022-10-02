length = 0
step = 10**(-4)
number_of_steps = 0

(1..2).step(step).each_cons(2) do |previous_x, current_x|
    if (previous_x == nil)
        previous_x = 0
    end
    length += Math.sqrt((step)**2 + (Math.log(previous_x).abs - Math.log(current_x).abs)**2)
    number_of_steps += 1
end

puts length
puts number_of_steps
