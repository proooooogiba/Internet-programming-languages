require './class-part-1-2'
require 'minitest/autorun'

class TestAlgorithm < MiniTest::Test
  def generate_accuracy
    10**rand(-15..-6)
  end

  def sample_test
    rand(10..20).times do
      accuracy = generate_accuracy
      test_algorithm = Algorithm.new(accuracy)
      # yield(test_algorithm)
      assert((test_algorithm.send('row_sum_1') - Math.exp(1)).abs < test_algorithm.accuracy)
    end
  end

  def test_1
    rand(10..20).times do
      accuracy = generate_accuracy
      test_algorithm = Algorithm.new(accuracy)
      assert((test_algorithm.row_sum_1 - Math.exp(1)).abs < test_algorithm.accuracy)
    end
  end

  def test_2
    rand(10..20).times do
      accuracy = generate_accuracy
      test_algorithm = Algorithm.new(accuracy)
      assert((test_algorithm.row_sum_2 - Math.exp(1)).abs < test_algorithm.accuracy)
    end
  end
end
