# multiples of 3 ------------------------------
# arr = (1..20).to_a
# mult_of_3 = Proc.new { |i| i % 3 == 0 }
# puts arr.select(&mult_of_3)

# round down ---------------------------------
# round_down = Proc.new { |i| i.floor }
# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# ints = floats.collect(&round_down)
# puts ints.sort

# over 4 feet --------------------------------
# group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# over_4_feet = Proc.new { |i| i >= 4 }

# puts group_1.select(&over_4_feet)
# puts group_2.select(&over_4_feet)
# puts group_3.select(&over_4_feet)

# greeter ------------------------------------
# def greeter
#   yield
# end

# phrase = Proc.new { 'Hello there' }
# puts greeter(&phrase)

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

d = Dragon.new('james')
puts d.fight
