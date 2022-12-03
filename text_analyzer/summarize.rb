text = %q{ 
  Ruby is a great programming language. It is object oriented and has many powerful features. 
  Some don't like it, but that's not our problem! It's easy to learn. It's great. To learn more about ruby, visit the official website today. 
}

# Splits text into an array of sentences. Gsub gets rid if all of the large areas of whitespace and replaces with a single space 
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)

# Sort sentences by length. Arrays and hashes have the sort_by method which can rearrange them into almost any order you want sort_by takes a code block as an argument
# The code block is an expression that defines what to sort by
sentences_sorted = sentences.sort_by { |sentence| sentence.length }

# Get middle third of the legnth-sorted sentences sorted. These are likely the most interesting, not too long, not too short.
one_third = sentences_sorted.length / 3

# The slice method cuts out a section of th array to assign to ideal sentences
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)

# does a check that sentences contain is or are 
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/} 
puts ideal_sentences.join(".")

# Gsub means: global substition - think of it like a search and replace 
"this is a text".gsub(/t/,'x')

# Questions
# What does slice do? Slice method cuts from 
# What does gsub do?
# How does sort_by work?
# WHat does select do? 