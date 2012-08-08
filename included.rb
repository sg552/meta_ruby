module BaseModule
  def BaseModule.included(extended_module)
    puts "#{self} included in #{extended_module}"
  end
  def say_hi
    puts "hihihi"
  end
end

module ExtendedModule
  include BaseModule
end

class Apple
  include ExtendedModule
end
class Banana
end

require 'test/unit'
class TestMixin < Test::Unit::TestCase
  def test_apple_include_module_should_gain_instance_method_say_hi
    Apple.new.say_hi
  end
  def test_banana_instance_extend_module_should_gain_instance_method_say_hi
    Banana.new.extend(ExtendedModule).say_hi
  end
end

