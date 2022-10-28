# frozen_string_literal: true

require './part_2'
require 'minitest/autorun'

# this is a class of TestCircle
class TestCircle < MiniTest::Test
  def setup
    @circle = Circle.new(10, 10, 5)
  end

  def test_one
    assert_equal(10, @circle.x)
    assert_equal(10, @circle.y)
    assert_equal(5, @circle.radius)
  end

  def test_two
    assert_equal(78.53981633974483, @circle.square)
  end

  def test_three
    assert_output('Circle: x = 10, y = 10, radius = 5') { @circle.print_circle }
  end
end

# this is a class of TestSphere
class TestSphere < MiniTest::Test
  def setup
    @sphere = Sphere.new(10, 10, 10, 5)
  end

  def test_one
    assert_equal(10, @sphere.x)
    assert_equal(10, @sphere.y)
    assert_equal(10, @sphere.z)
    assert_equal(5, @sphere.radius)
  end

  def test_two
    assert(523.5987755982989, @sphere.volume)
  end

  def test_three
    assert_output('Sphere: x = 10, y = 10, z = 10, radius = 5') { @sphere.print_sphere }
  end
end
