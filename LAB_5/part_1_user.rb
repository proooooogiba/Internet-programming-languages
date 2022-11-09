# frozen_string_literal: true

def f(x, y)
  (((x - 1).abs**(1.0 / 2) - y.abs**(1.0 / 2)).to_f / (1 + (x**2 / 2.0) + (y**2 / 4.0)))
end

print 'Input x to find f(x, y): '
x = Integer(gets.chomp)
print 'Input y to find f(x, y): '
y = Integer(gets.chomp)

puts "f(#{x}, #{y}): #{f(x, y)}"
