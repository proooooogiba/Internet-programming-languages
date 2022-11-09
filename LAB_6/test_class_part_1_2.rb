# frozen_string_literal: true

require './class_part_1_2'
require 'minitest/autorun'

# this is a class of Algorithm
class TestAlgorithm < MiniTest::Test
  def generate_accuracy
    10**rand(-15..-6)
  end

  # пережать название метода .send(name)
  def sample_test(method_name)
    rand(10..20).times do
      accuracy = generate_accuracy
      test_algorithm = Algorithm.new(accuracy)
      assert((test_algorithm.send(method_name) - Math.exp(1)).abs < test_algorithm.accuracy)
    end
  end

  def test_row_sum_one
    sample_test('row_sum_one')
  end

  def test_row_sum_two
    sample_test('row_sum_two')
  end
end
