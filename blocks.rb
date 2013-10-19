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
# irb(main):005:0> three(5) { |x| x }
# => 25

add4 = lambda { |x| x + 4 }

def five(n, &block)
  block.call(n)
end

five(add4)

require 'irb'
IRB.start
