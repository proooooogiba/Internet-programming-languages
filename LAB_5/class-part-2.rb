class Algorithm
    attr_accessor :array
    def initialize(arr = Algorithm.generate())
        @array = arr
    end

    def self.generate()
        a = Array.new
        rand(2..100).times do
            a.append(rand(1..100) - 50)
        end
        return a
    end

    def is_local_max(index, a)
        if a[index] > a[index - 1] && a[index] > a[index + 1]
            return true
        end
        return false
    end 
    
    def is_capable(index, a)
        if a[index] > 0 && a[index] % 2 == 0 && a[index - 1] > 0 && a[index - 1] % 2 == 0 && a[index + 1] > 0 && a[index + 1] % 2 == 0
            return true
        end
        return false
    end

    def calc
        sup_arr = Array.new
        (1..@array.length - 2).each do |index|
            if (is_local_max(index, @array) && is_capable(index, @array))
                sup_arr.append(index)
            end
        end
        return sup_arr
    end
end