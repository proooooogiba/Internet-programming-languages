require "text-handler.rb"
require "minitest/unit"

class TestTextHandler < MiniTest::Unit::TestCase
    def setup
        @text_handler = TextHandler.new("Hello world")
    end
