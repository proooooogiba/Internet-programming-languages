require './class-part-2.rb'
require 'minitest/autorun'


class TestAlgorithm < MiniTest::Test
    def test_1
        test_algorithm = Algorithm.new([1, 2, 3, 4, 5])
        assert_equal([], test_algorithm.calc())
    end

    def test_2
        test_algorithm = Algorithm.new([2, 6, 4, -1, 2, 2])
        assert_equal([1], test_algorithm.calc())
    end

    def test_3
        test_algorithm = Algorithm.new([2, 4, 0, -1, 6, 2, 8, -1, 10])
        assert_equal([], test_algorithm.calc())
    end

    def test_4
        test_algorithm = Algorithm.new([2, 4, 0, -1, 6, 8, 2, -1, 10, 14, 6])
        assert_equal([5, 9], test_algorithm.calc())
    end

    def test_5
        test_arr = Algorithm.generate()
        test_algorithm = Algorithm.new(test_arr)
        assert_equal(test_arr, test_algorithm.array)
    end
end