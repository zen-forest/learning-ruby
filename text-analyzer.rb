# creates an empty string for us to work with
text = ""
# sets a variable to zero
line_count = 0


# Calls the file class and runs the open method. Each line iterated over
File.open("oliver-twist.txt").each do |line|
  line_count = line_count + 1
  text = text + line
end

# Count the lines
lines = File.readlines("oliver-twist.txt")

line_count = lines.size

# Count characters and words
total_characters = text.length 
word_count = text.split.length

# gsub does a global search and replace 
# you can use gsub to eradicate spaces in the text string
total_characters_nospaces = text.gsub(/\s+/,'').length


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


paragraph_count = text.split(/\n\n/).length


# Calculating averages


# We can also look at the % of "useful" words 
# Non-useful words for context setting and structure are: or, that, are, etc. 
stopwords = %w{the a by on for of are with just but and to the my I has some in or The more But that he been at into he she was an it It if }
# text2 = %q{Los Angeles has some of the nicest weather in the country.}
# words = text2.scan(/\w+/)
# keywords = words.select { |word| !stopwords.include?(word) }
# puts keywords.join(' ')
# The ! means NOT 

# Make a list of words in the text that aren't stop words, count them, and work out the percentage of non-stop words
all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

# Provide analysis back to user
puts "#{total_characters} characters"
puts "#{word_count} total words"
puts "#{sentence_count} sentences"
puts "#{line_count} lines"
puts "#{paragraph_count} paragraphs"
puts "#{good_percentage}% of all words are non-fluff"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
