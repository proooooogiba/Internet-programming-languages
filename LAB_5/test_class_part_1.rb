# frozen_string_literal: true

require './class_part_1'
require 'minitest/autorun'
# class TestMathTask
class TestMathTask < MiniTest::Test
  def test_1
    math_task = MathTask.new(1, 2)
    assert_equal(1, math_task.x)
    assert_equal(2, math_task.y)
  end

  def test_2
    math_task = MathTask.new(0, 0)
    assert_equal(1, math_task.calc)
  end
end
