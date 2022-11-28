# frozen_string_literal: true
include Math
# this class does validation for input
class Validator
  def self.check(num)
    case num
    when /\D/
      puts 'Вы ввели нечисловое значение, пожалуйста, повторите ввод: '
      check(gets.chomp!) # remove trailing newline
    when '' || nil
      puts 'Вы ввели нечисловое значение, пожалуйста, повторите ввод: '
      check(gets.chomp!) # remove trailing newline
    else
      num.to_f
    end
  end
end

class MathTask
  attr_accessor :x, :y

  def initialize(x = rand(1..100), y = rand(1..100))
    @x = check(x)
    @y = check(y)
  end

  def check(number)
    if number.match?(/\D/) || number = '' || number.nil?
      puts 'Вы ввели нечисловое значение, пожалуйста, повторите ввод: '
      check(gets.chomp!)
    end
    number.to_f
  end

  def calc
    (sqrt((@x - 1).abs) - sqrt(@y.abs)) / (1 + ((@x**2) / 2) + ((@y**2) / 4))
  end
end

puts MathTask.new(gets.chomp!, gets.chomp!).calc

# x = Integer(gets.chomp)
# print 'Input y to find f(x, y): '
# y = Integer(gets.chomp)

# puts "f(#{x}, #{y}): #{f(x, y)}"

# class ConsoleInterface
#   def initialize(input: $stdin, output: $stdout)
#     @input = input
#     @output = output
#   end
#   def ask_question
#     @output.puts "Would you like to continue? [yN]"
#   end
#   def answer
#     @input.gets.chomp.downcase
#   end
# end