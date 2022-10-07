require './text-handler.rb'

require "minitest/autorun"

class TestTextHandler < MiniTest::Test
    def setup
    end
    
    def generate_correct_random_text # здесь я должен генерировать правильный текст в соотвествии с условием задачи
        input=""
        o = (['а'..'д'] + ['ё'..'р'] + ['т'..'я']).map(&:to_a).flatten
        for i in 0..rand(2..10)
            input += rand(2..10).times.map { (0..20).map { o[rand(o.length )] }.join }.join(" ") + "\n"
        end
        puts input
        return input
      end
    
    def test_1
        test_text = "Все прекрасно\nВсезамечательно\nВсе чётко\n"
        @text_handler = TextHandler.new(test_text)
        assert_equal(test_text, @text_handler.text)
    end

    def test_2
        @text_handler = TextHandler.new("Привет сам то как?")
        @text_handler.autohandle()
        assert("Привет сам то как?" != @text_handler.text)
        @text_handler.text_print
    end

    def test_3
        @text_handler = TextHandler.new(generate_correct_random_text())
        old_text = @text_handler.text
        @text_handler.autohandle()
        new_text = @text_handler.text
        assert_equal(old_text, new_text)
    end

    def test_4
        @text_handler = TextHandler.new(generate_correct_random_text())
        old_text = @text_handler.text
        @text_handler.autohandle()
        new_text = @text_handler.text
        assert_equal(old_text, new_text)
    end

    def teardown
    end
end
