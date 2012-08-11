def say_goodbye
  puts 'goodbye'
end

say_goodbye #=> 'goodbye'

alias :original_goodbye :say_goodbye
def say_goodbye
  puts 'my love,'
  original_goodbye
  puts 'and farewell'
end
say_goodbye # => 'my love, goodbye, and farewell'

