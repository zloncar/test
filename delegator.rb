require 'delegate'

class Stats
  def initialize
    @source = SimpleDelegator.new([])
  end

  def stats(records)
    @source.__setobj__(records)

    "Elements:  #{@source.size}\n" +
    " Non-Nil:  #{@source.compact.size}\n" +
    "  Unique:  #{@source.uniq.size}\n"
  end
end

# s = Stats.new
# puts s.stats(%w{James Edward Gray II})
# puts
# puts s.stats([1, 2, 3, nil, 4, 5, 1, 2])


class Person
  def speak
    'hello'
  end

  def age
    30
  end

  def id
    42
  end
end

class LatinDecorator < SimpleDelegator
  # modifies existing functionality
  def speak
    # "'hola' means '#{__getobj__.speak}'"
    "'hola' means '#{super}'"
  end

  # adds new functionality
  def dance
    'cha-cha-cha'
  end

  def id
    super
  end

  def my_ref
    __getobj__
  end
end

person = Person.new
wrapper = LatinDecorator.new(person)
p wrapper.speak
p wrapper.age
p wrapper.dance
p wrapper.my_ref
p wrapper.id


