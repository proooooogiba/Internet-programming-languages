class TextHandler
    attr_reader :text
    def initialize(text = nil)
      @text_arr = Array.new
      if (text == nil)
        @text_arr = generate_random_text_in_array()
      else 
        @text_arr = text.split("\n").map { |line| line.split }
      end
      update_text()
    end

    def update_text
      @text = ""
      @text_arr.each { |line| @text += line.join(' ')+ "\n"}
    end

    def text_print
      puts @text
    end

    def autohandle
      @text_arr.each do |line|
        x = 0
        line.each do |word|
          x+=1
          if word[0] == 'е' && x % 2 == 0
            line.delete(word)
          end
          if word[0] == 'с' && x % 2 == 0
              puts "Replace the word '#{word}'"
              input = generate_random_word()
              while (input[0] == 'с' || input[0] == 'е') do
                  puts "Word '#{input}' doesn't match, because 'c' and 'e' can not be first in every second word"
                input = generate_random_word()
              end
              p input
              word.replace(input)
          end
        end
      end
      update_text()
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
              while (input[0][0] == 'с' || input[0][0] == 'е') do
                  puts "Word '#{input[0]}' doesn't match, because 'c' and 'e' can not be first in every second word"
                input = gets.chomp.split[0]
              end
              word.replace(input[0])
          end
        end
      end
      update_text()
    end
    
    def generate_random_text_in_array
      arr = Array.new
      for i in 0..rand(2..10)
        input = rand(2..10).times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join }.join(" ")
        arr.push(input.split)
      end
      return arr
    end

    def generate_random_word
      return (0...20).map { ('а'..'я').to_a[rand(33)] }.join
    end

    private :generate_random_text_in_array
end


