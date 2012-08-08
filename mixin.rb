module M
  def self.included(base)
    base.extend(ClassMethods)
  end
  module ClassMethods
    def say_hi; "hi" end
  end
  def say_goodbye; "goodbye" end
end

class C; include M end

require 'test/unit'
class TestMixin < Test::Unit::TestCase
  def test_get_classmethod_by_including_module
    assert_equal "hi", C.say_hi
    assert_equal "goodbye", C.new.say_goodbye
  end
end
