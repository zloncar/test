Bundler.require

class Request
  attr_accessor :fake

  def initialize(fake)
    @fake = fake
  end

  def build
    out = (
    Nokogiri::XML::Builder.new do
      CommandList {
        StartBooking {
          XmlLoginId 'JMQF1QENGTWY2UH1'
        }
      }
    end )

    if fake == true
      node = out.doc.xpath('//StartBooking').first
      Nokogiri::XML::Builder.with(node) do
        FakeBooking fake
      end
    end
    out.to_xml
  end
end

t = Request.new(true)
f = Request.new(false)

puts "----------"
puts t.build
puts "----------"
puts f.build
#require 'irb'
#IRB.start
