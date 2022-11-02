# This is a text-analyzer 

# creates an empty string for us to work with
text = ""

# sets a variable to zero
line_count = 0
# Calls the file class and runs the open method. Each line iterated over
File.open("oliver-twist.txt").each do |line|
  line_count = line_count + 1
  text = text + line
end

puts "#{line_count} lines"


total_characters = text.length 
word_count = text.split.length
puts "#{total_characters} characters"
puts "#{word_count} total words"
# gsub does a global search and replace 
# you can use gsub to eradicate spaces in the text string
total_characters_nospaces = text.gsub(/\s+/,'').length
puts "#{total_characters_nospaces} characters excluding spaces"

# We want to count the number of words in the text file 
# we can:
# 1. count the number of groups of contiguos letters using scan to create an array 
# 2. Split the text on whitespace and count the resulting fragments using split and size

# Split automatically looks at whitespace as a way to separate between words
# puts "this is a test".split.length
# which could be problematic…so below
# text = "First-class decisions require clear-headed thinking"
# puts "Scan method: #{text.scan(/\w+/).length}"
# puts "Scan method: #{text.split.length}"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# Calculating averages
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
