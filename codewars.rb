def get_squares(array)
  squares = []
  array.each do |x|
    sqrt = Math.sqrt(x)
    squares << x if sqrt - sqrt.floor == 0
  end
  squares
end

get_squares(1..16)

perfect_squares = Proc.new do |i|
  sqrt = Math.sqrt(i)
  sqrt - sqrt.floor == 0
end
puts (1..17).select(&perfect_squares)

def solution(full_text, search_text)
  # full_text[search_text]
  # full_text.count search_text
  full_text.scan(search_text).count
end
a = solution('aabbccbb', 'bb')
puts a
