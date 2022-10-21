require './class-part-1-2'
require 'minitest/autorun'

class TestAlgorithm < MiniTest::Test
  def generate_accuracy
    10**rand(-15..-6)
  end

  def sample(method_name)
    rand(10..20).times do
      accuracy = generate_accuracy
      test_algorithm = Algorithm.new(accuracy)
      assert((test_algorithm.send(method_name) - Math.exp(1)).abs < test_algorithm.accuracy)
    end
  end

  def test_1
    methods = ["row_sum_1", "row_sum_2"]
    methods.each_index {|index| sample(methods[index])}
  end
end
