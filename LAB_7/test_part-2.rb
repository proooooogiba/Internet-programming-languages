require './part-2.rb'
require 'minitest/autorun'

class TestCircle < MiniTest::Test
    def setup
        @circle = Circle.new(10, 10, 5)
    end

    def test_1
        assert_equal(10, @circle.x)
        assert_equal(10, @circle.y)
        assert_equal(5, @circle.radius)
    end

    def test_2
        assert_equal(78.53981633974483, @circle.square)
    end

    def test_3
        assert_output("Circle: x = 10, y = 10, radius = 5") {@circle.print_circle}
    end
end

class TestSphere < MiniTest::Test
    def setup
        @sphere = Sphere.new(10, 10, 10, 5)
    end

    def test_1
        assert_equal(10, @sphere.x)
        assert_equal(10, @sphere.y)
        assert_equal(10, @sphere.z)
        assert_equal(5, @sphere.radius)
    end

    def test_2
        assert(523.5987755982989, @sphere.volume)
    end

    def test_3
        assert_output("Sphere: x = 10, y = 10, z = 10, radius = 5") {@sphere.print_sphere}
    end
end
