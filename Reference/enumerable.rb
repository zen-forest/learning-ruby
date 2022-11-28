# Enumerable
[1,2,3,4,5].each { |number| puts number }
# In this case you create a temporary array and use the each to iterate over each value in the code block

my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length 
end

puts longest_word 