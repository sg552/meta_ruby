string = <<-CODE
  (1..5).each { puts " I love Apple! "}
CODE
eval(string)

class Apple; end
Apple.class_eval(%Q{ def say_hi; puts 'hi'; end }, "dummy.rb", 123)
Apple.class_eval(%Q{ def say_error; raise 'error'; end }, "dummy.rb", 123)
Apple.new.say_hi
Apple.new.say_error

