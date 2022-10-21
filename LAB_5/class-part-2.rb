class Algorithm
    attr_accessor :array
    def initialize(arr = self.class.generate)
        @array = arr
    end

    def self.generate
        a = []
        rand(2..100).times do
            a.append(rand(1..100) - 50)
        end
        a
    end

    def local_max?(index, a)
        if a[index] > a[index - 1] && a[index] > a[index + 1]
            return true
        end
        false
    end 
    
    def capable?(index, a)
        if a[index] > 0 && a[index] % 2 == 0 && a[index - 1] > 0 && a[index - 1] % 2 == 0 && a[index + 1] > 0 && a[index + 1] % 2 == 0
            return true
        end
        false
    end

    def calc
        sub_arr = []
        (1..@array.length - 2).each do |index|
            if (local_max?(index, @array) && capable?(index, @array))
                sub_arr.append(index)
            end
        end
        sub_arr
    end
end

