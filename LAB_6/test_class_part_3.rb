# frozen_string_literal: true

require './class_part_3'
require 'minitest/autorun'

# this is a class of TestFindRoot
class TestFindRoot < MiniTest::Test
  def setup; end

  def generate_accuracy
    10**-rand(1..5)
  end

  def sample_test(method_name, func_root)
    rand(10..20).times do
      test_root = FindRoot.new(generate_accuracy)
      assert((test_root.lambda_root(FindRoot.send(method_name)) - func_root).abs < test_root.accuracy)
    end
  end

  def test_one
    sample_test('func1', 0)
  end

  def test_two
    sample_test('func2', -0.761322021484375)
  end

  def test_three
    func_root = 0
    rand(10..20).times do
      test_root = FindRoot.new(generate_accuracy)
      assert((test_root.lambda_root(FindRoot.method(:f)) - func_root).abs < test_root.accuracy)
    end
  end

  def test_four
    func_root = -0.761322021484375
    rand(10..20).times do
      test_root = FindRoot.new(generate_accuracy)
      assert((test_root.lambda_root(FindRoot.method(:g)) - func_root).abs < test_root.accuracy)
    end
  end

  def test_five
    func_root = 0
    rand(10..20).times do
      test_root = FindRoot.new(generate_accuracy)
      assert((test_root.block_root { |x| FindRoot.f(x) } - func_root).abs < test_root.accuracy)
    end
  end

  def test_six
    func_root = -0.761322021484375
    rand(10..20).times do
      test_root = FindRoot.new(generate_accuracy)
      assert((test_root.block_root { |x| FindRoot.g(x) } - func_root).abs < test_root.accuracy)
    end
  end
end
