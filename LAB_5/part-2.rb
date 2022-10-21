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

def generate_arr
    arr = Array.new
    rand(2..100).times do
        arr.append(rand(1..100) - 50)
    end
    arr
end

a = generate_arr()
print (a.to_s + "\n")

sup_arr = []

for index in (1..a.length - 2)
    if (local_max?(index, a) && capable?(index, a))
        sup_arr.append(index)
    end
end

print sup_arr.to_s + "\n"
