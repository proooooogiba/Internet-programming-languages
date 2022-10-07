require './class-part-1.rb'
require 'minitest/autorun'

class TestFileWork < MiniTest::Test
    def setup
        @task_file = FileWork.new("F", "G")
    end

    def test_1
        assert_equal("F", @task_file.input_filename)
        assert_equal("G", @task_file.output_filename)
    end

    def test_2
        @task_file.write_to_input_file("1 2 3 4 5")
        file = File.open("#{@task_file.input_filename}.txt", "r")
        assert_equal("1 2 3 4 5", file.read())

        string = create_string_number()
        @task_file.write_to_input_file(string)
        file = File.open("#{@task_file.input_filename}.txt", "r")
        assert_equal(string, file.read())
    end

    def test_3        
        @task_file.write_to_input_file("1\n2\n3\n4\n5\n")
        @task_file.write_from_input_to_output()
        output_file = File.open("#{@task_file.output_filename}.txt", "r")
        assert_equal("5\n", output_file.read())
    end

end