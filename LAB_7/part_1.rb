# frozen_string_literal: true

def generate_random_word
  (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join
end

def generate_random_line
  line = ''
  (0..rand(2..10)).each do |_word|
    line += "#{generate_random_word} "
  end
  line += "\n"
end

def generate_random_text
  text = ''
  (0..rand(2..10)).each do |_line|
    text += generate_random_line.to_s
  end
  text
end

def write_to_file(string)
  file = File.open('F.txt', 'w')
  file.write(string)
  file.close
end

text = generate_random_text
write_to_file(text)
f = File.open('F.txt', 'r')
arr = []

f.each_line do |line|
  arr.push(line.split)
end

ans = arr.sum { |line| line.count { |word| word.length == 2 } }
f.close

puts text
puts ans
