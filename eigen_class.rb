class Object
  def eigenclass
    class << self
      self
    end
  end
end
class Fruit ; end
class Apple < Fruit; end
puts "Apple.eigenclass : #{Apple.eigenclass.inspect}"
puts "Fruit.eigenclass : #{Fruit.eigenclass.inspect}"
puts "Apple.eigenclass.superclass : #{Apple.eigenclass.superclass.inspect}"
puts "Fruit.eigenclass.superclass : #{Fruit.eigenclass.superclass.inspect}"
class Fruit
  class << self
    def say_hi; 'hi' ; end
  end
end
puts "Fruit.say_hi: #{Fruit.say_hi}"
puts "Apple.say_hi: #{Apple.say_hi}"
