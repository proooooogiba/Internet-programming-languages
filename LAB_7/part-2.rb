class Point
    attr_reader :x, :y
    def initialize(x,y)
        @x, @y = x, y
    end

    def print
        p "(x:#{@x}, y:#{@y})"
    end
end

class Circle < Point
    attr_reader :radius
    def initialize(x, y, radius)
        super(x, y)
        @radius = radius
    end

    def print
        p "(x:#{@x}, y:#{@y}) radius: #{@radius}"
    end
end


# point = Point.new(1, 2)

circle = Circle.new(1, 2, 3)

# point.print
circle.print