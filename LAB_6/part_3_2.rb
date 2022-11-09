# frozen_string_literal: true

def f(x_coord)
  -x_coord**2 + Math.sin(x_coord / 2.0)
end

def g(x_coord)
  x_coord**5 + 3 * x_coord**3 + x_coord**2 + 1
end

def root(accuracy)
  left = -2.0
  right = 0.0
  middle = (left + right) / 2.0
  while (right - left).abs >= accuracy
    if (yield(middle) * yield(left)).negative?
      right = middle
    else
      left = middle
    end
    middle = (left + right) / 2.0
  end
  middle
end

p root(0.01) { |x| g(x) }
