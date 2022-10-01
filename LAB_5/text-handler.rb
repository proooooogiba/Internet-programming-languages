class TextHandler
    attr_accessor :text, :text_arr
    protected :text, :text_arr
    def initialize(text = nil)
      @text_arr = Array.new
      if (text == nil)
        @text_arr = generate_random_text
      else 
        @text_arr = text.split("\r").map { |line| line.split }
      end
    end

    def text_print
      @text_arr.each do |line|
        line.each do |word|
          print word + " "
        end
        print "\r"
      end
      puts
    end

    def handle
      @text_arr.each do |line|
        x = 0
        line.each do |word|
          x+=1
          if word[0] == 'е' && x % 2 == 0
            line.delete(word)
          end
          if word[0] == 'с' && x % 2 == 0
              puts "Replace the word '#{word}'"
              input = gets.chomp.split[0]
              flag = true
              while (input[0][0] == 'с' || input[0][0] == 'е') do
                  puts "Word '#{input[0]}' doesn't match, because 'c' and 'e' can not be first in every second word"
                input = gets.chomp.split[0]
              end
              word.replace(input[0])
          end
        end
      end
    end
    
    def generate_random_text # здесь я должен генерировать правильный текст в соотвествии с условием задачи
      arr = Array.new
      for i in 0..rand(2..10)
        input = rand(2..10).times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join }.join(" ") # gets.chomp
        arr.push(input.split)
      end
      return arr
    end

    private :generate_random_text
end

test_text = TextHandler.new

test_text.text_print()

test_text.handle()

test_text.text_print()
