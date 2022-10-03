require './class-part-3.rb'
require 'minitest/autorun'

def f(x)
    return Math.sin(x).to_f / x
end

def g(x)
    return Math.tan(x + 1).to_f / (x + 1)
end

class TestMaximCalculate < MiniTest::Test
    def setup
        @max_calc_1 = MaximCalculate.new(1, 2, 10**(-3), method(:f), method(:g))
        
        @lam_f = lambda { |x| Math.sin(x).to_f / x }
        @lam_g = lambda { |x| Math.tan(x + 1).to_f / (x + 1) }
        @max_calc_2 = MaximCalculate.new(1, 2, 10**(-3), @lam_f, @lam_g)
    end

    def test_1
        puts "Checking fields of maxim algoritm"
        assert_equal(1, @max_calc_1.start)
        assert_equal(2, @max_calc_1.final)
        assert_equal(10**(-3), @max_calc_1.step)
    end

    def test_2
        puts "Checking ordinary function as paramets"
        assert_equal(method(:f), @max_calc_1.func1)
        assert_equal(method(:g), @max_calc_1.func2)
    end

    def test_3
        puts "Checking lambda function as paramets"
        assert_equal(@lam_f, @max_calc_2.func1)
        assert_equal(@lam_g, @max_calc_2.func2)
    end

    def test_4
        puts "Checking whether other types of function params gives simular answers"
        assert_equal(@max_calc_1.maxim, @max_calc_2.maxim)
    end
end
