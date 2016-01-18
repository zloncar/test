def one
  result = yield
end

def two
  yield :one
  yield :two
  yield :three
end

def three(n)
  if block_given?
    yield(n**2)
  end
end

# three(5)
# => nil
# three(5) { |x| x }
# irb(main):005:0> three(5) { |x| x }
# => 25

$add4 = lambda { |x| x + 4 }

def five(n, &block)
  block.call(n)
end

five(33, &$add4)

# =====

bar = Proc.new do |amount, leadtime|
  result = []
  rate = amount / leadtime.size
  leadtime.each { |t| result << { t => rate } }
  result
end

def foo(amount, leadtime, &block)
  block.call(amount, leadtime)
end

foo(1200, [14, 45, 76], &bar)

# =====

def baz(amount, *leadtimes)
  leadtimes.collect do |leadtime|
    Hash[ leadtime, amount / leadtimes.size ]
  end
end

p baz(1200, 14, 45, 76)

#require 'irb'
#IRB.start
