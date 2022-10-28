# frozen_string_literal: true

require './class_part_2'
require 'minitest/autorun'

# this is a class of TestMathTask
class TestAlgorithm < MiniTest::Test
  def sample(array, result)
    test_algorithm = Algorithm.new(array)
    assert_equal(result, test_algorithm.calc)
  end

  def test_one
    tests = [
      [[1, 2, 3, 4, 5], []],
      [[2, 6, 4, -1, 2, 2], [1]],
      [[2, 4, 0, -1, 6, 2, 8, -1, 10], []],
      [[2, 4, 0, -1, 6, 8, 2, -1, 10, 14, 6], [5, 9]]
    ]

    tests.each_with_index.select { |_element, i| sample(tests[i][0], tests[i][1]) }
  end

  def test_two
    test_arr = Algorithm.generate
    test_algorithm = Algorithm.new(test_arr)
    assert_equal(test_arr, test_algorithm.array)
  end
end
