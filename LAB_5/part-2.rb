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

def generate_arr()
    a = Array.new
    rand(2..100).times do
        a.append(rand(1..100) - 50)
    end
    return a
end

a = generate_arr()
print (a.to_s + "\n")

sup_arr = Array.new

for index in (1..a.length - 2)
    if (is_local_max(index, a) && is_capable(index, a))
        sup_arr.append(index)
    end
end

print sup_arr.to_s + "\n"
