# frozen_string_literal: true

require './class_part_3'
require 'minitest/autorun'

# class TestTextHandler
class TestTextHandler < MiniTest::Test
  def test_one
    text_handler = TextHandler.new("Hello, ты как?\nВсе норм или нет?\nТы какой-то неразговорчивый\n")
    assert_equal("Hello, ты как?\nВсе норм или нет?\nТы какой-то неразговорчивый\n", text_handler.text)
  end

  def test_two
    text_handler = TextHandler.new('Ничего личного - просто работа')
    assert_equal('Ничего личного - просто работа - символ а:2, символ б:1, '\
        'символ г:2, символ е:1, символ и:2, символ л:1, символ н:1, символ о'\
        ':6, символ п:1, символ р:2, символ с:1, символ т:2, символ ч:2, символ Н:1', text_handler.handle)
  end

  def test_three
    text_handler = TextHandler.new("Hello, ты как?\nВсе норм или нет?\nТы какой-то неразговорчивый\n")

    assert_equal('Ты какой-то неразговорчивый - символ а:2, символ в:2, символ г:1, символ е:1, '\
         'символ з:1, символ и:1, символ й:2, символ к:2, символ н:1, символ о:4, символ р:2, сим'\
         "вол т:1, символ ч:1, символ ы:2, символ Т:1\nВсе норм или нет? - символ е:2, символ и:2"\
         ', символ л:1, символ м:1, символ н:2, символ о:1, символ р:1, символ с:1, символ т:1, с'\
         "имвол В:1\nHello, ты как? - символ а:1, символ к:2, символ т:1, символ ы:1, символ e:1, "\
         'символ l:2, символ o:1, символ H:1', text_handler.handle)
  end

  def test_four
    21.times do |_i|
      random_text = TextHandler.generate_random_text
      text_handler = TextHandler.new(random_text)
      assert_equal(text_handler.text, random_text)
    end
  end
end
