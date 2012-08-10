#irb(main):001:0> class Apple; def color ; puts 'color'; def taste; puts 'good'; end; end; end
#=> nil
#irb(main):002:0> a = Apple.new
#=> #<Apple:0xb7861f70>
#irb(main):003:0> a.taste
#NoMethodError: undefined method `taste' for #<Apple:0xb7861f70>
#        from (irb):3
#        from :0
#irb(main):004:0> a.color
#color
#=> nil
#irb(main):005:0> a.taste
#good
#=> nil
#irb(main):006:0> exit

class Apple
  def outer_method
    puts 'this is outer'
    def inner_method
      puts 'this is inner'
    end
  end
end

a = Apple.new
a.inner_method # Exception.
a.outer_method  # => 'this is outer'
a.inner_method # => 'this is inner'

