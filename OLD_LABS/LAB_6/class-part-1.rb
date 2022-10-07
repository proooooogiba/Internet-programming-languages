class CalculateAlgorithm
    attr_accessor :start, :final, :step
    def initialize(start, final, step)
        @start =  start
        @final = final
        @step = step
    end

    def calc_length_1
        x = @start
        length = 0
        while (x < @final)
            length += Math.sqrt((@step)**2 + (Math.log(x).abs - Math.log(x + @step).abs)**2)
            x += @step
        end
        return length
    end

    def calc_steps_number
        return ((@final - @start).abs / @step).to_i
    end

    def calc_length_2
        length = 0
        (@start..@final).step(@step).each_cons(2) do |previous_x, current_x|
            if (previous_x == nil)
                previous_x = 0
            end
            length += Math.sqrt((@step)**2 + (Math.log(previous_x).abs - Math.log(current_x).abs)**2)
        end
        return length
    end

end

calculate = CalculateAlgorithm.new(1, 2, 10**(-4))
puts calculate.calc_length_1
puts calculate.calc_length_2
puts calculate.calc_steps_number