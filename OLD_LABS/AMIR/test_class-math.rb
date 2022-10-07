require './class-math.rb'
require "minitest/autorun"

class TestMathTask < MiniTest::Test
    def setup
        x = 1
        z = 2
        @math_task = MathTask.new(x, z) # можно было сразу написать MathTask.new(1, 2)
    end

    #здесь ты проверяешь, что метод foo возвращает то, что ты ожидаешь
    def test_1
        assert(0.99 - @math_task.foo() < 0.01)
    end

    #это тест делать необязательно, но на всякий случай проверяем, что параметры класса такие какие мы задали
    def test_2
        assert_equal(1, @math_task.x)
        assert_equal(2, @math_task.z)
    end
    
end