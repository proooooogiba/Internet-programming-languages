# frozen_string_literal: true

# class Algorithm
class Algorithm
  attr_accessor :array

  def initialize(arr = Algorithm.generate)
    @array = arr
  end

  def self.generate
    arr = []
    rand(2..100).times do
      arr.append(rand(-49..50))
    end
    arr
  end

  def local_max?(index, arr)
    return true if arr[index] > arr[index - 1] && arr[index] > arr[index + 1]

    false
  end

  def element_capable?(element)
    return true if element.positive? && element.even?

    false
  end

  def capable?(index, arr)
    return true if element_capable?(arr[index]) && element_capable?(arr[index - 1]) && element_capable?(arr[index + 1])

    false
  end

  def calc
    sup_arr = []
    (1..@array.length - 2).each do |index|
      sup_arr.append(index) if local_max?(index, @array) && capable?(index, @array)
    end
    sup_arr
  end
end
