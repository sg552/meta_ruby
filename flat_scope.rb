require 'test/unit'

operation = "say"
target = "hi"
dynamic_class_name = Class.new do
  define_method operation do
    puts "#{operation} #{target}"
  end
end
Kernel.const_set("DynamicClassName", dynamic_class_name)

class Apple
  taste = "sweet"
  define_method "taste" do
    puts "very #{taste}"
  end
end

class Banana
  def proxy_taste
    Banana.send :define_method,"taste" do
      puts "very good banana"
    end
    puts "method define"
  end
end

class FlatScopeTest < Test::Unit::TestCase
  def test_dynamic_class
    DynamicClassName.new.say
  end

  def test_dynamic_methods
    Apple.new.taste
  end

  def test_define_dynamic_methods_from_anther_method
    Banana.new.proxy_taste
    Banana.new.taste
  end
end
