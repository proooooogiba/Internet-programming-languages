class Circle
    attr_accessor :x, :y, :radius
    def initialize(x, y, radius)
        @x, @y, @radius = x, y, radius
    end

    def print_circle
        print "Circle: x = #{@x}, y = #{@y}, radius = #{@radius}"
    end

    def square
        return Math::PI * @radius * @radius
    end
end

class Sphere < Circle
    attr_accessor :z
    def initialize(x, y, z, radius)
        super(x, y, radius)
        @z = z
    end

    def print_sphere
        print "Sphere: x = #{@x}, y = #{@y}, z = #{@z}, radius = #{@radius}"
    end

    def volume
        return 4.0 / 3 * Math::PI * @radius**3
    end
end
