require './part-2.rb'
require 'minitest/autorun'

class TestPoint < MiniTest::Test
    @@test_count = 0
    def setup
        @x = 1
        @y = 2
        @point = Point.new(@x, @y)
    end

    def test_1
        assert_equal(@x, @point.x)
        assert_equal(@y, @point.y)
    end

    def test_2
        assert_equal("(x:#{@x}, y:#{@y})", @point.print)
    end
    
    def teardown
        @@test_count += 1
        puts "Test #{@@test_count} of Point is successful"
    end 
end

class TestCircle < MiniTest::Test
    @@test_count = 0
    def setup
        @x = 1
        @y = 2
        @radius = 3
        @circle = Circle.new(@x, @y, @radius)
    end

    def test_1
        assert_equal(@x, @circle.x)
        assert_equal(@y, @circle.y)
        assert_equal(@radius, @circle.radius)
    end

    def test_2
        assert_equal("(x:#{@x}, y:#{@y}) radius: #{@radius}", @circle.print)
    end

    def test_3
        assert(Circle < Point)
    end
    
    def teardown
        @@test_count += 1
        puts "Test #{@@test_count} of Circle is successful"
    end
end
