# puts (100).times { |i| puts ((Math.sin(8 * i) + 17).to_f / (1 - Math.sin(4 * i) * Math.cos(i**2 + 18))**2)**(1.to_f / 2) }

print 'Input x to find f(x): '
x = Integer(gets.chomp)
puts ((Math.sin(8 * x) + 17).to_f / (1 - Math.sin(4 * x) * Math.cos(x**2 + 18))**2)**(1.to_f / 2)
# ((((Math.sin(8 * x) + 17).to_f).div(1 - Math.sin(4 * x) * Math.cos(x**2 + 18))**2)**(1.to_f.div(2)))
