# frozen_string_literal: true

# class TextHandler
class TextHandler
  attr_reader :text, :text_arr

  def initialize(text = self.class.generate_random_text)
    @text_arr = text.split("\n")
    @text = text
  end

  def self.generate_random_word
    (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join
  end

  def self.generate_random_text
    arr = ''
    (0..rand(2..10)).each do |_line|
      (0..rand(2..10)).each do |_word|
        arr += "#{TextHandler.generate_random_word} "
      end
      arr += "\n"
    end
    arr
  end

  def handle
    arr = []

    @text_arr.each { |line| arr.append(line) }

    arr = arr.sort_by(&:length).reverse

    alphabet = ('а'..'я').to_a + ('А'..'Я').to_a + ('a'..'z').to_a + ('A'..'Z').to_a

    format_text = []
    arr.each do |string|
      format_string = []
      alphabet.each do |letter|
        format_string.append("символ #{letter}:" + string.count(letter).to_s) if string.count(letter).nonzero?
      end
      format_text.append("#{string} - #{format_string.join(', ')}")
    end

    @text = format_text.join("\n").to_s
  end
end

test = TextHandler.new
print test.text
puts
puts test.handle
