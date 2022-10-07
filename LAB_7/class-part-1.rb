class WorkWithFile
    attr_accessor :filename, :string
    def initialize(filename = nil)
        @filename = filename
    end

    def self.generate_word
        return (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join
    end

    def self.generate_random_text
        arr = Array.new
        (1..rand(2..10)).each { arr.push(rand(2..10).times.map { generate_word() }.join(" ")) }
        return arr.join("\n").to_s
    end

    def write_to_file(string = WorkWithFile.generate_random_text())
        @string = string
        file = File.open(@filename + ".txt", "w")
        file.write(@string)
        file.close
    end

    def read_from_file()
        f = File.open(@filename + ".txt", "r")
        text = f.read()
        f.close
        return text        
    end

    def count_words_length(length = 2)
        f = File.open(@filename + ".txt", "r")
        arr = Array.new
        f.each_line do |line|
            arr.push(line.split)
        end
        f.close
        return arr.sum{|line| line.count{|word| word.length == length}}
    end    
end

file = WorkWithFile.new("F")
file.write_to_file("AB S fs fds fsd m fds ,mfsd\nfdsanjfsnkfnsalk\nfsdklfmas")

print file.read_from_file() + "\n"

print file.count_words_length(2)


