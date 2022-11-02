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
puts "#{total_characters} characters"

# gsub does a global search and replace 
# you can use gsub to eradicate spaces in the text string
total_characters_nospaces = text.gsub(/\s+/,'').length
puts "#{total_characters_nospaces} characters excluding spaces"


