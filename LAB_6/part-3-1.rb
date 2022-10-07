def f(x)
    return -x**2  + Math.sin(x / 2.0)
end

def g(x)
    return x**5 + 3 * x**3 - 2 * x**2 - 1
end

def root(func)
    left = -2.0
    right = 0.0
    middle = (left + right) / 2.0
    while (right - left).abs >= @accuracy
        if func.call(middle) * func.call(left) < 0
            right = middle
        else
            left = middle
        end
        middle = (left + right) / 2.0
    end
    return middle
end
