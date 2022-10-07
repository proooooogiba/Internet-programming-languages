class Algorithm
    attr_accessor :accuracy
    def initialize(accuracy)
        @accuracy = accuracy
    end

    def row_sum_1()
        number_of_steps = 0
        sum = 0
        k = 1
        while (1.0 / Math.gamma(k) >= @accuracy)
            number_of_steps += 1
            sum += 1.0 / Math.gamma(k)
            k += 1
        end
        # return sum, number_of_steps
        return sum
    end

    def row_sum_2()
        sum = 0
        (1..Float::INFINITY).each do |k|
            sum += 1.0 / Math.gamma(k)
            break if 1.0 / Math.gamma(k) < @accuracy
        end
        return sum
    end 
end

p Algorithm.new(10**(-4)).row_sum_2()
