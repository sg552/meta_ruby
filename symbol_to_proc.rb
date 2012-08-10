class String
    def contains_a_or_c?
      match(/a|c/)
    end
end
array = ["aaa", "bbb", "ccc", "ddd"]
result1 = array.collect(&:contains_a_or_c?)
result2 = array.collect{ |element| element.contains_a_or_c? }

puts result1.inspect
puts result2.inspect

