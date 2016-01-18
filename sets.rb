require 'set'

a = Set.new [1, 2, 3, 4]
b = Set.new [2, 3, 4, 5]
c = Set.new [3, 4, 5, 6]
d = Set.new [4, 5, 6, 7]

i = a & b & c & d
u = a | b | c | d
# z = u - i
z = u - (a & b) - (a & c) - (a & d) - (b & c) - (b & d) - (c & d)

puts "i = #{i.to_a}"
puts "u = #{u.to_a}"
puts "z = #{z.to_a}"

