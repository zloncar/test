multiples_of_3 = Proc.new { |n| n % 3 == 0 }
result = []
result << (5..24).to_a.select(&multiples_of_3)
puts result.join(', ') # => 6, 9, 12, 15, 18, 21, 24

over_4_feet = Proc.new { |i| i >= 4 }
group= [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
puts group.select(&over_4_feet).join(', ') # => 4.1, 5.5, 6.1, 4.7
