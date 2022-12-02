# Enumerable
# [1,2,3,4,5].each { |number| puts number }
# In this case you create a temporary array and use the each to iterate over each value in the code block

my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length 
end

puts longest_word 

my_array2 = %w{10 56 92 3 49 588 18}
highest_number = 0 
my_array2.each do |number| 
  number = number.to_i
  highest_number = number if number > highest_number 
end

# puts highest_number
# -> 588

# The array class has pre-included methods provided by enumerable 
# collect, detect, find, final_all, include?, max, min, select, sort, and to_a
# if you can implement an each, you can include enumerable 

[1,2,3,4].collect { |i| i.to_s + "x" }
# => ["1x", "2x", "3x", "4x"]

[1,2,3,4].detect { |i| i.between?(2,3) }

class AllVowels
  VOWELS = %w{a e i o u}

  def each 
    VOWELS.each { |v| yield v }
  end
end

x = AllVowels.new
x.each { |v| puts v }

x = AllVowels.new 
x.collect { |i| i + "x" }
