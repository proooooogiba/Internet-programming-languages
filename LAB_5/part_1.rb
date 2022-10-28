# frozen_string_literal: true

def f(x, y)
  (((x - 1).abs**(1.0 / 2) - y.abs**(1.0 / 2)).to_f / (1 + (x**2 / 2.0) + (y**2 / 4.0)))
end

x = 1
y = 2

puts f(x, y)

puts (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join