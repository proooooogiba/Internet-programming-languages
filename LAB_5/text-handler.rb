class TextHandler
    attr_accessor :text
    protected :text
    def initialize(text)
        @text = text
    end
    
    def hadle()
      arr = Array.new
      while (@text != '')
        @text = gets.chomp
        arr.push(@text.split)
      end

      arr.pop

      arr.each do |line|
        x = 0
        line.each do |word|
          x+=1
          if word[0] == 'е' && x % 2 == 0
            line.delete(word)
          end
          if word[0] == 'с' && x % 2 == 0
              puts "Replace the word '#{word}'"
              word.replace(gets.chomp.split[0])
          end
        end
    end
  end

