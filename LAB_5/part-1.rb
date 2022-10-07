print 'Input x to find f(x, y): '
x = Integer(gets.chomp)
print 'Input y to find f(x, y): '
y = Integer(gets.chomp)

string = "f(#{x}, #{y}): "
puts (((x - 1).abs**(1.0 / 2) - (y).abs**(1.0 / 2)) / (1 + x**2/2 + y**2/4))
