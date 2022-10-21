class FindRoot
  def self.func1
    ->(x) { -x**2 + Math.sin(x / 2.0) }
  end

  def self.func2
    ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
  end

  attr_accessor :accuracy

  def initialize(accuracy)
    @accuracy = accuracy
  end

  def self.f(x)
    -x**2 + Math.sin(x / 2.0)
  end

  def self.g(x)
    x**5 + 3 * x**3 + x**2 + 1
  end

  def lambda_root(func)
    left = -2.0
    right = 0.0
    middle = (left + right) / 2.0
    while (right - left).abs >= @accuracy
      if (func.call(middle) * func.call(left)).negative?
        right = middle
      else
        left = middle
      end
      middle = (left + right) / 2.0
    end
    middle
  end

  def block_root
    left = -2.0
    right = 0.0
    middle = (left + right) / 2.0
    while (right - left).abs >= accuracy
      if (yield(middle) * yield(left)).negative?
        right = middle
      else
        left = middle
      end
      middle = (left + right) / 2.0
    end
    middle
  end
end

test_root = FindRoot.new(0.0001)
p test_root.lambda_root(FindRoot.func2)
