# frozen_string_literal: true

# this class does checking
class Checker
  def self.check(num)
    case num
    when /\D/
      puts 'Вы ввели нечисловое значение, пожалуйста, повторите ввод: '
      check(gets.chop)  
    when ''
      puts 'Вы не ввели значение, пожалуйста, повторите ввод: '
      check(gets.chop)
    else
      num.to_f end
  end
end
