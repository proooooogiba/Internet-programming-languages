class TextHandler
    attr_reader :text, :text_arr
    
    def initialize(text = self.class.generate_random_text)
      @text_arr = text.split("\n")
      @text = text
    end

    def self.generate_random_text
      arr = Array.new
        for i in 0..rand(2..10)
          arr.push(rand(2..10).times.map { (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join }.join(" "))
        end
      return arr.join("\n").to_s
    end
    
    def handle
      arr = []

      @text_arr.each { |line| arr.append(line)}

      arr = arr.sort_by(&:length).reverse()

      alphabet = ('а'..'я').to_a + ('А'..'Я').to_a + ('a'..'z').to_a + ('A'..'Z').to_a

      format_text = []
      arr.each do |string|
        format_string = []
        alphabet.each do |letter|
          if (string.count(letter) != 0)
            format_string.append("символ #{letter}:" + string.count(letter).to_s)
          end
        end
        format_text.append(string + " - " + format_string.join(", ").to_s)
      end

      @text = format_text.join("\n").to_s
    end
end

test = TextHandler.new
print test.text
puts
print test.handle() + "\n"