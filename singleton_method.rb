# concept: a method on a single instance .
# e.g.
# methods
#
class Apple
end
a = Apple.new
def a.say_hi
  puts "hihihi, from instance #{a}"
end

a.say_hi  # 'hihihi, from ...'
b = Apple.new
b.say_hi # Exception: undefined_error
