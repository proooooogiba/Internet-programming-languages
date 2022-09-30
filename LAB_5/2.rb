# input = ' '
# arr = Array.new
# while (input != '')
#     input = gets.chomp
#     arr.push(input.split)
# end

# arr.pop

# arr.each do |line|
#   x = 0
#   line.each do |word|
#     x+=1
#     if word[0] == 'е' && x % 2 == 0
#       line.delete(word)
#     end
#     if word[0] == 'с' && x % 2 == 0
#         puts "Replace the word '#{word}'"
#         word.replace(gets.chomp.split[0])
#     end
#   end
# end

# print arr
input = Array.new
10.times do |i|
input = 10.times.map { rand(1..50).times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join }.join(" ") }.join("\n")
input = input.split("\n")
print input

# arr = Array.new
# while (input != '')
#     arr.push(input.split)
# end

# arr.pop

# arr.each do |line|
#   x = 0
#   line.each do |word|
#     x+=1
#     if word[0] == 'е' && x % 2 == 0
#       line.delete(word)
#     end
#     if word[0] == 'с' && x % 2 == 0
#         puts "Replace the word '#{word}'"
#         word.replace(gets.chomp.split[0])
#     end
#   end
# end

# print arr
