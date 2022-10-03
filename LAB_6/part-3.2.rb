func1 = lambda { |x| Math.sin(x).to_f / x }
func2 = lambda { |x| Math.tan(x + 1).to_f / (x + 1) }

def maxim(start, final, step, func1, func2)
    max = 0
    (start..final).step(step).each do |x|
        delta_y = (func1.call(x) - func2.call(x)).abs
        if (delta_y > max)
            max = delta_y
        end
    end
    return max
end

p maxim(0.5, 1, 0.01, func1, func2)