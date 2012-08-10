class Apple
  def self.color
    "red"
  end
  class << self
    def size
      "big"
    end
  end
end

require 'test/unit'
class SingletonTest < Test::Unit::TestCase
  def test_regular_definition
    assert_equal "red", Apple.color
    assert_equal "big", Apple.size
  end
  def test_example22_
    obj="222"
    class << obj
      def method_on_eingin_class
        "x"
      end
    end
    assert_equal "x", obj.method_on_eingin_class
    "222".method_on_eingin_class
    "333".method_on_eingin_class
  end
end

