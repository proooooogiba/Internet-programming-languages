def generate_word
    return (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join
end

def generate_random_text
    arr = Array.new
    (1..rand(2..10)).each { arr.push(rand(2..10).times.map { generate_word() }.join(" ")) }
    return arr.join("\n").to_s
end

def write_to_file(string)
    file = File.open("F.txt", "w")
    file.write(string)
    file.close
end

text = generate_random_text()
write_to_file(text)

f = File.open("F.txt", "r")
arr = Array.new

f.each_line do |line|
    arr.push(line.split)
end

ans = arr.sum{|line| line.count{|word| word.length == 2}}
f.close

puts text
puts ans
