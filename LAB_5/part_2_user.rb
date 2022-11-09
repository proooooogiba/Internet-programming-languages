# frozen_string_literal: true

def local_max?(index, arr)
  return true if arr[index] > arr[index - 1] && arr[index] > arr[index + 1]

  false
end

def element_capable?(element)
  return true if element.positive? && element.even?

  false
end

def capable?(index, arr)
  return true if element_capable?(arr[index]) && element_capable?(arr[index - 1]) && element_capable?(arr[index + 1])

  false
end

def generate_arr
  arr = []
  rand(2..100).times do
    arr.append(rand(-49..50))
  end
  arr
end

puts 'Input numbers of array or press Enter to generate random array'
arr = gets.chomp.split(' ').map(&:to_i)
arr = generate_arr if arr.length.zero?
print("#{arr}\n")

sup_arr = []

(1..arr.length - 2).each do |index|
  sup_arr.append(index) if local_max?(index, arr) && capable?(index, arr)
end

if sup_arr.length.zero?
  puts 'There are no local maximums'
else
  puts "Indexes of local maximus: #{sup_arr}"
end
