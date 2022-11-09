# frozen_string_literal: true

def f(x_coord)
  -x_coord**2 + Math.sin(x_coord / 2.0)
end

def g(x_coord)
  x_coord**5 + 3 * x_coord**3 - 2 * x_coord**2 - 1
end

func1 = ->(x) { -x**2 + Math.sin(x / 2.0) }

func2 = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }

def root(func, accuracy)
  left = -2.0
  right = 0.0
  middle = (left + right) / 2.0
  while (right - left).abs >= accuracy
    if (func.call(middle) * func.call(left)).negative?
      right = middle
    else
      left = middle
    end
    middle = (left + right) / 2.0
  end
  middle
end

print "Input accuracy\n"
accuracy = gets.chomp.to_f

print "If you want to find root press Enter:\n1: f(x)\n2: g(x)\n3:func1\n4:func2\nelse:out\n"
x = gets.chomp.to_i
case x
when 1
  puts root(method(:f), accuracy)
when 2
  puts root(method(:g), accuracy)
when 3
  puts root(func1, accuracy)
when 4
  puts root(func2, accuracy)
end
