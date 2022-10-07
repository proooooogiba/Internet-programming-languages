require './class-part-3-1.rb'
require 'minitest/autorun'

class TestFindRoot < MiniTest::Test
    def setup
    end
    
    def test_1
        func_root = 0
        rand(10..20).times do
            test_root = FindRoot.new(10**(-rand(1..5)))
            assert((test_root.lambda_root(FindRoot.method(:f)) - func_root).abs < test_root.accuracy)
            assert((test_root.lambda_root(FindRoot.func1) - func_root).abs < test_root.accuracy)
        end
    end

    def test_2
        func_root = -0.761322021484375
        rand(10..20).times do
            test_root = FindRoot.new(10**(-rand(1..5)))
            assert((test_root.lambda_root(FindRoot.method(:g)) - func_root).abs < test_root.accuracy)
            assert((test_root.lambda_root(FindRoot.func2) - func_root).abs < test_root.accuracy)
        end
    end

    def test_3
        func_root = 0
        rand(10..20).times do
            test_root = FindRoot.new(10**(-rand(1..5)))
            assert((test_root.block_root{|x| FindRoot.f(x)} - func_root).abs < test_root.accuracy)
        end
    end

    def test_4
        func_root = -0.761322021484375
        rand(10..20).times do
            test_root = FindRoot.new(10**(-rand(1..5)))
            assert((test_root.block_root{|x| FindRoot.g(x)} - func_root).abs < test_root.accuracy)
        end
    end
end
