# frozen_string_literal: true

# class WorkWithFile
class WorkWithFile
  attr_accessor :filename, :string

  def initialize(filename = nil)
    @filename = filename
  end

  def self.generate_random_word
    (0...(rand(10))).map { ('а'..'я').to_a[rand(33)] }.join
  end

  def self.generate_random_line
    line = ''
    (0..rand(2..10)).each do |_word|
      line += "#{WorkWithFile.generate_random_word} "
    end
    line += "\n"
  end

  def self.generate_random_text
    text = ''
    (0..rand(2..10)).each do |_line|
      text += WorkWithFile.generate_random_line.to_s
    end
    text
  end

  def write_to_file(string = WorkWithFile.generate_random_text())
    @string = string
    file = File.open("#{@filename}.txt", 'w')
    file.write(@string)
    file.close
  end

  def read_from_file
    f = File.open("#{@filename}.txt", 'r')
    text = f.read
    f.close
    text
  end

  def count_words_length(length = 2)
    f = File.open("#{@filename}.txt", 'r')
    arr = []
    f.each_line do |line|
      arr.push(line.split)
    end
    f.close
    arr.sum { |line| line.count { |word| word.length == length } }
  end
end

file = WorkWithFile.new('F')
file.write_to_file("AB S fs fds fsd m fds ,mfsd\nfdsanjfsnkfnsalk\nfsdklfmas")

print "#{file.read_from_file}\n"

print file.count_words_length(2)
