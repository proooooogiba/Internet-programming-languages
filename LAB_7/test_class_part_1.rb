# frozen_string_literal: true

require './class_part_1'
require 'minitest/autorun'

# class TestWorkWithFile
class TestWorkWithFile < MiniTest::Test
  def setup
    @file = WorkWithFile.new('F')
    @file.write_to_file('Hello, how are you? Everything is okay or not')
    @f = File.open('F.txt', 'r')
  end

  def test_one
    assert_equal('Hello, how are you? Everything is okay or not', @f.read, @file.read_from_file)
  end

  def test_two
    rand(10..20).times do
      file = WorkWithFile.new('F')
      text = WorkWithFile.generate_random_text
      file.write_to_file(text)
      f = File.open('F.txt', 'r')
      assert_equal(text, f.read, file.read_from_file)
    end
  end

  def test_three
    assert_equal(2, @file.count_words_length(2))
    assert_equal(2, @file.count_words_length)
  end
end
