# frozen_string_literal: true

require './logic.rb'
include Math

puts 'Введите значения переменных x и z: '
print 'x='
x = Checker.check(gets.chop)
print 'z='
z = Checker.check(gets.chop)
puts 'Значение функции с заданными аргументами:'
a = x * (Math.cos(z) + Math::E**-(x + 3))
print 'a='
puts a
