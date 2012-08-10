var = "meta"
class Apple
  #puts var # undefined local variable or method `var'
end
module Banana
  #puts var # undefined local variable or method `var'
end

class Apple
  color = 'red'
  def show_color
    puts color
  end
end
Apple.new.show_color
