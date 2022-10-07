def create_random_string()
    string = ""
    number = rand(1..3) * 5
    number.times do
        string += rand(1..100).to_s + "\n"
    end
    return string
end

def write_to_file(string)
    file = File.open("F.txt", "w")
    file.write(string)
    file.close
end

string = create_random_string()

write_to_file(string)

f = File.open("F.txt", "r")
g = File.open("G.txt", "w")

arr = Array.new
f.each_line do |line|
  arr.push(line.to_i)
  if arr.length == 5
    g.write(arr.max.to_s + "\n")
    arr.clear
  end
end

f.close
g.close
