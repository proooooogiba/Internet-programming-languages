def create_string_number
  string = ""
  number = rand(1..3) * 5
  number.times do
      string += rand(1..100).to_s + "\n"
  end
  return string
end

class FileWork
  attr_accessor :input_filename, :output_filename, :string
  
  def initialize(input_filename, output_filename)
    @input_filename = input_filename
    @output_filename = output_filename
  end

  def write_to_input_file(string)
    @string = string
    file = File.open("#{@input_filename}.txt", "w")
    file.write(@string)
    file.close
  end

  def write_from_input_to_output()
    f = File.open("#{@input_filename}.txt", "r")
    g = File.open("#{@output_filename}.txt", "w")

    arr = Array.new
    f.each_line do |line|
      arr.push(line.to_i)
      if arr.length == 5
        g.write(arr.max.to_s + "\n")
        arr.clear
      end
    end
    f.close
    g.close
  end
end