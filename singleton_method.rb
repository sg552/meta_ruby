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
      def singleton_method
        "x"
      end
    end
    assert_equal "x", obj.singleton_method
    "222".singleton_method
    "333".singleton_method
  end
end

