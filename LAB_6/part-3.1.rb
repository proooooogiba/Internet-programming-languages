def f(x)
    return Math.sin(x).to_f / x
end

def g(x)
    return Math.tan(x + 1).to_f / (x + 1)
end

def maxim(start, finish, step, func1, func2)
    max = 0
    (start..finish).step(step).each do |x|
        delta_y = (func1.call(x) - func2.call(x)).abs
        if (delta_y > max)
            max = delta_y
        end
    end
    return max
end

p maxim(0.5, 1, 0.01, method(:f), method(:g))

