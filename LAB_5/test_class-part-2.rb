require './class-part-2.rb'
require 'minitest/autorun'
require 'matrix'

class TestAlgorithm < MiniTest::Test
    def sample(array, result)
        test_algorithm = Algorithm.new(array)
        assert_equal(result, test_algorithm.calc)
    end

    def test_1
        tests = [
                [[1, 2, 3, 4, 5], []], 
                [[2, 6, 4, -1, 2, 2], [1]],
                [[2, 4, 0, -1, 6, 2, 8, -1, 10], []],
                [[2, 4, 0, -1, 6, 8, 2, -1, 10, 14, 6], [5, 9]]
                ]

        tests.each_with_index.select {|element, i| sample(tests[i][0], tests[i][1])}
    end

    def test_2
        test_arr = Algorithm.generate
        test_algorithm = Algorithm.new(test_arr)
        assert_equal(test_arr, test_algorithm.array)
    end
end