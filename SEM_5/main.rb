
p [1, 2, 3, 4].select { |digit| digit.even? } # => [2, 4]
# возвращает массив элементов, для которых блок вернул true
# антипод метода reject

hash = { name: 'Anna', password: 'qwerty', age: 50 }
hash.each_value { |value| puts value } # => Anna, qwerty, 50


p [[1, 2], [3, 1], [5, 0]].sort_by { |_, x| x} # _ означает, что мы не используем первый элемент массива
# => [[5, 0], [1, 2], [3, 1]]

(1..10).each { |x| puts x } # => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
(1...10).each { |x| puts x } # => 1, 2, 3, 4, 5, 6, 7, 8, 9

(1..100).select(&:even?).first(4)

p (1..Float::INFINITY).lazy.map { |num| "Value = #{num}" }.select { |str| str[-1].to_i.even? }.first(2)

enum = (1..Float::INFINITY).lazy.map { |x| x ** x }.take_while{ |x| x < 50_000}

p enum.force
p enum.to_a
# в данном случае force и  to_a  эквивалентны

# Регулярные выражения
'dw'.match?() #лучше использовать match
'dw' =~ 

''.match(/hello/)

