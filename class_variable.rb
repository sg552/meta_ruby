class Fruit
  @@name = 'fruit'
end
class Apple < Fruit
  @@color = 'red'
  @@taste = 'good'
end

puts Fruit.class_variables.inspect
puts Apple.class_variables.inspect
puts Apple.class_variable_defined? :@@color
puts Apple.send(:class_variable_get,:@@color)
Apple.send :class_variable_set,:@@color, 'dark red'
puts Apple.send(:class_variable_get,:@@color)



