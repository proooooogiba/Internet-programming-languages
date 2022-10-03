class MaximCalculate
    attr_accessor :start, :final, :step, :func1, :func2

    def initialize(start, final, step, func1, func2)
        @start = start
        @final = final
        @step = step
        @func1 = func1
        @func2 = func2
    end

    def maxim
        max = 0
        (start..final).step(step).each do |x|
            delta_y = (func1.call(x) - func2.call(x)).abs
            if (delta_y > max)
                max = delta_y
            end
        end
        return max
    end    
end

# maxim_calculate = MaximCalculate.new(0.5, 1, 0.01, lambda_f, lambda_g)

# puts maxim_calculate.maxim
