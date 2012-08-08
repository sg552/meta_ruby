module M
  def self.extended(another)
    puts "#{self} is extended by #{another}"
  end
  def say_hi
    puts "hihihi"
  end
end


class C
end
class D
  extend M
end
require 'test/unit'
class TestExtended < Test::Unit::TestCase
  def test0_see_the_callbacks?
    c = C.new
    c.extend(M).say_hi
  end
  def test1_class_should_extend_module_and_gain_class_methods
    D.say_hi
  end
end
