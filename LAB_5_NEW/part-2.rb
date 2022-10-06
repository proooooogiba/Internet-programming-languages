

a = Array.new
rand(2..100).times do
    a.append(rand(1..100) - 50)
end
print (a.to_s + "\n")

sup_arr = Array.new

a.each do |element|
    if (element > 0 && element % 2 == 0)
        sup_arr.append(element)
    else
        maxim = sup_arr.max_by(&:abs)
        if sup_arr.count(maxim) == 1
            puts maxim
        end
        sup_arr.clear
    end
end

maxim = sup_arr.max_by(&:abs)
if sup_arr.count(maxim) == 1
    puts maxim
end
sup_arr.clear

