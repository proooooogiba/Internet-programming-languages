# frozen_string_literal: true

def row_sum(accuracy)
  number_of_steps = 0
  sum = 0
  k = 1
  while 1.0 / Math.gamma(k) >= accuracy
    number_of_steps += 1
    sum += 1.0 / Math.gamma(k)
    k += 1
  end

  [sum, number_of_steps]
end

puts 'Введите значение точности'
accuracy = gets.chomp.to_f
puts "Точность равна #{accuracy}"
print row_sum(accuracy)
# при изменении точности число операций изменяется на количество порядков точности
