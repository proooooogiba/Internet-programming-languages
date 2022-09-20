# def sum(x, y)
#     x == y ? (x + y): (x + y) * 5
# end

# p sum(5, 2)
# p sum(5, 5)


# a = (1..3)
# puts a.map { |n| Math.sin(n) * 2 }.to_s

# x = 5
# if x
#     puts "x is true"
# end

def test_func (x)
    for i in 0...x do
    yield i + 1
    end
end

# test_func(6) { |huy| puts huy }
# test_func(5) do |n|
#     s="#{n}:"
#     n.times {s += '*'}
#     puts s
#     end

