# Regular Expressions

# Characters and their meaning
# ^  Anchor for beginning of a line
# $  Anchor for the end of a line
# \A Anchor for the start of of a string
# \z Anchor for the end of a string
# .  Any character
# \w Any letter, digit, or underscore
# \W Anything that \w doesn't match
# \d Any digit
# \D Anything that \d doesn't match
# \S Non-whitespace (any visible character)

"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
  puts x
end
# 1000
# 10

"The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
  puts x
end
# 1
# 0
# 0
# 0
# 1
# 0

# Regular Expression Character and Sub-expression modifiers
# *  Match zero or more occurences of the preceding character, and match as many as possible.
# +  Match one or more occurences of the preceding character, and match as many as possible. 
# *? Match zero or more occcurences of the preceding character, and match as few as possible.
# +? Match one or more occurences of the preceding character, and match as few as possible. 
# ?  Match either one or none of the preceding character. 
# {x} Match x occurences of the preceding character. 
# {x,y} Match at least x occurences and at most y occurences. 

# Matching 

# Matching is useful if you want to quickly see if there's a particular pattern in a string. You could do this:
puts "String has vowels" if "This is a test" =~ /[aeiou]/
# =~ is another form of an operator: a matching operator.

# You could also use a built in string method called match 
puts "String has vowels" if "This is a test".match(/[aeiou]/) 
