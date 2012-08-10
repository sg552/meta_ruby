class Apple
  def taste
    "good"
  end
end

MOCK_STRING = "this is a mock apple, let's suppose it to taste good"
class MockApple
  def taste
    MOCK_STRING
  end
end

require 'test/unit'
class SubstitudeClassTest < Test::Unit::TestCase
  def test_should_substitude_the_real_class_with_mock
    assert_equal "good", Apple.new.taste
    Object.send(:remove_const, "Apple")
    Object.send(:const_set, "Apple", MockApple)
    assert_equal MOCK_STRING, Apple.new.taste
    puts self
    puts self.class
    puts self.class.ancestors.inspect
    puts self.inspect
  end
end
