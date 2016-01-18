parse_four = proc { |x| x[3].strip }
parse_six = proc { |x| x[3].strip }

def parse(n, &block)
  block.call(n)
end

# address = "47 Exeter Road, London, GB, N14 5JT"
address = "1/1, 970 Govan Road , Glasgow, Lanarkshire, GB, G51 3AJ"
parts = address.split(/,/)


pick = { 4 => parse_four, 6 => parse_six }
method_to_call = pick.fetch(parts.size)

#puts parse(parts, &method_to_call)

class Foo
  def self.bar(parts)
    puts "In bar: #{parts[2]}"
  end

  def self.baz(parts)
    puts "In baz: #{parts[1]}"
  end
end

pick = { 4 => :bar, 6 => :baz }
type1 = [2,4,6,8]
type2 = [1,3,5,7,9,11]
type3 = [1,2,3]
# foo = Foo.new
# foo.send(pick.fetch([1,2,3,4].size),[1,2,3,4])
# foo.send(pick.fetch([1,2,3,4,5,6].size),[1,2,3,4,5,6])

#send(Foo.bar([1,2,3,4]))
#Foo.send(pick.fetch(type3.size, :bar),type3)

def f(x)
  x
end


# t1 = ["address", "city", "country", "pc"]
# a1 = ["Park Square", "Stockport", "UK", "SK3 0XF"]
# h = {}
# a1.each { |i| h[t1.shift] = f(i) }
# puts h
t2 = [:address, :city, :pc]
a2 = ["The Towers", "Manchester", "M12 3NO"]
h = {}
a2.each { |i| h[t2.shift] = f(i) }
puts h
# t3 = ["address1", "address2", "city", "county", "country", "pc"]
# a3 = ["1/1", "970 Govan Road", "Glasgow", "Lanarkshire", "GB", "G51 3AJ"]
# h = {}
# a3.each { |i| h[t3.shift] = f(i) }
# puts h

w = { :city => h[:city], :pc => h[:pc] }
w[:address] = h.key?(:address1) ? h[:address1] + ", " + h[:address2] : h[:address]
puts w