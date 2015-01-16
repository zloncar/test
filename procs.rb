multiples_of_3 = Proc.new { |n| n % 3 == 0 }
result = []
result << (5..24).to_a.select(&multiples_of_3)
puts result.join(', ') # => 6, 9, 12, 15, 18, 21, 24
