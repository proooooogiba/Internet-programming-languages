def f(x)
    return Math.sin(x).to_f / x
end

def g(x)
    return Math.tan(x + 1).to_f / (x + 1)
end

def function(x)
    yield x
end

def maxim(start, final, step)
    max = 0
    (start..final).step(step).each do |x| 
        delta_y = (function(x) {|x| Math.sin(x).to_f / x} - function(x) {|x| Math.tan(x + 1).to_f / (x + 1)}).abs
        if (delta_y > max)
            max = delta_y
        end
    end
    return max
end

p maxim(0.5, 1, 0.01)
