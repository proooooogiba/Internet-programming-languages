# frozen_string_literal: true

# class MathTask
class MathTask
  attr_accessor :x, :y

  def initialize(x = rand(1..100), y = rand(1..100))
    @x = x
    @y = y
  end

  def calc
    ((@x - 1).abs**(1.0 / 2) - @y.abs**(1.0 / 2)).to_f / (1 + (@x**2 / 2.0) + (@y**2 / 4.0))
  end
end
