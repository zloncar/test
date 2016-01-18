require 'box.rb'

module Box
  class ModuleTest
    attr_accessor :a
    def initialize
      @a = 'a'
    end
  end
end

mt = Box::ModuleTest.new
mt.a = 'b'
puts mt.a


