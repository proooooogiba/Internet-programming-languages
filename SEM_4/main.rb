class ArrayWorker
    def self.sort_by_length(arr)
        arr.sort_by(&:length)
    end
end

class Logic
    def self.find_below_zeros(temps, dates)
        Hash[dates.zip(temps)]
    end
end

dates = ['2018-01-01', '2018-01-02', '2018-01-03']
temps = [1, -2, 3]
p Logic.find_below_zeros(temps, dates)
