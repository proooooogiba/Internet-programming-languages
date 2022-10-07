class MathTask
    attr_accessor :x, :z
    def initialize(x, z)
        @x, @z = x, z
    end

    def foo()
        return Math.sin(35.5 * (@z.to_i / (@x.to_i-5))) + @x.to_i*@x.to_i/(2*(Math.exp(@x.to_i)))
    end
end

test_Math = MathTask.new(1, 2)

p test_Math.foo()