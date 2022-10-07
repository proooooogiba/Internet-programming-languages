
input = Array.new
10.times do |i|
input = 10.times.map { rand(1..50).times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join }.join(" ") }.join("\n")
input = input.split("\n")
print input
