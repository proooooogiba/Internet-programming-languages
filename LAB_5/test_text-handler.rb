require "text-handler.rb"
require './text-handler.rb'

require "minitest/unit"

class TestTextHandler < MiniTest::Unit::TestCase
    def setup
        @text_handler = TextHandler.new
        @text_handler.handle();
    end

    def test_1
    end    
    
    
    def teardown
    end
end
