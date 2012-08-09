class Apple
end

require 'test/unit'
class BasicsTest < Test::Unit::TestCase
  def test_instance_eval_by_adding_method_to_instance
    a = Apple.new
    a.instance_eval{
      def say_hi
        puts 'hi'
      end
    }
    a.say_hi  # => 'hi'
    b = Apple.new
    # NoMethodError: undefined method `say_hi' for #<Apple:0xb76e1010>
    b.say_hi
  end

  def test_class_eval_by_adding_method_to_class
    Apple.class_eval { define_method :say_goodbye do; puts "goodbye"; end }
    Apple.new.say_goodbye # => "goodbye"
  end

end
