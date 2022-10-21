require './class-part-3-1'
require 'minitest/autorun'

class TestFindRoot < MiniTest::Test
  def lambda_sample(method_name, func_root)
    rand(10..20).times do
      test_root = FindRoot.new(10**-rand(1..5))
      assert((test_root.lambda_root(FindRoot.send(method_name)) - func_root).abs < test_root.accuracy)
    end
  end

  def test_1
    lambda_sample(:func1, 0)
    lambda_sample(:func2, -0.761322021484375)
  end

  def block_sample(method_name, func_root)
    rand(10..20).times do
      test_root = FindRoot.new(10**-rand(1..5))
      assert((test_root.block_root { |x| FindRoot.send(method_name, x) } - func_root).abs < test_root.accuracy)
    end
  end

  def test_2
    block_sample(:f, 0)
    block_sample(:g, -0.761322021484375)
  end

  def test_3
    func_root_1 = -0.761322021484375
    func_root_2 = 0
    rand(10..20).times do
      test_root = FindRoot.new(10**-rand(1..5))
      assert((test_root.send(:lambda_root, FindRoot.method(:g)) - func_root_1).abs < test_root.accuracy)
      assert((test_root.send(:lambda_root, FindRoot.method(:f)) - func_root_2).abs < test_root.accuracy)
    end
  end
end
