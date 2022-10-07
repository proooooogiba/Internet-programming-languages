def row_sum(accuracy)
    sum = 0
    (1..Float::INFINITY).each do |k|
        sum += 1.0 / Math.gamma(k)
        break if 1.0 / Math.gamma(k) < accuracy
    end
    return sum
end

p row_sum(10**(-4))
