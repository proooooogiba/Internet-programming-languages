# frozen_string_literal: true

# this is a class of Algorithm
class Algorithm
  attr_accessor :accuracy

  def initialize(accuracy)
    @accuracy = accuracy
  end

  def row_sum_one
    number_of_steps = 0
    sum = 0
    k = 1
    while 1.0 / Math.gamma(k) >= @accuracy
      number_of_steps += 1
      sum += 1.0 / Math.gamma(k)
      k += 1
    end
    sum
  end

  def row_sum_two
    sum = 0
    (1..Float::INFINITY).each do |k|
      sum += 1.0 / Math.gamma(k)
      break if 1.0 / Math.gamma(k) < @accuracy
    end
    sum
  end
end
