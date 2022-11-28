# frozen_string_literal: false

include Math

require './Логика'

puts 'Введите значения переменных x и y: '
print 'x = '
x = gets
if x.blank?
  puts 'Вы ввели пустое значение, пожалуйста, повторите ввод: '
  x = Validator.check(x.chomp!)
end

print 'y = '
if y.blank?
    puts 'Вы ввели пустое значение, пожалуйста, повторите ввод: '
    x = Validator.check(y.chomp!)
  end
# y = Validator.check(gets.chomp!)
a = (sqrt((x - 1).abs) - sqrt(y.abs)) / (1 + ((x**2) / 2) + ((y**2) / 4))
puts 'Результат: ', a
