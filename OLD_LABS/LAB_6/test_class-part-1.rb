require './class-part-1.rb'
require 'minitest/autorun'

class TestCalculateAlgorithm < MiniTest::Test
    def setup
        @calculate_1 = CalculateAlgorithm.new(1, 2, 10**(-3))
        @calculate_2 = CalculateAlgorithm.new(1, 2, 10**(-4))
    end


    def test_1
        puts "Checking methods of Calculate algoritm"
        assert_equal(1, @calculate_1.start)
        assert_equal(2, @calculate_1.final)
        assert_equal(10**(-3), @calculate_1.step)
    end

    def test_2
        assert(@calculate_1.calc_steps_number != @calculate_2.calc_steps_number)
    end

    def test_3
        assert_equal(@calculate_1.calc_length_1, @calculate_1.calc_length_2)
        assert_equal(@calculate_2.calc_length_1, @calculate_2.calc_length_2)
    end

end