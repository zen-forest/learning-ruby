# Variables

# Variable rules
# * Must be a single unit without spaces
# * must start with either a letter or an underscore
# * must only containe letters, numbers, or underscores

# Variables are important because they let you run operations on various types of data

#These are the same thing:
x = x + y 
x += y 
# Because the act of a variable performing an operation upon itself is so common in programming, you can shorten it

# A common way to increase a variables value by one is: 
x += 1

#---

# Comparison Operators and Expressions

# These two are the same thing:
age = 24 
age >= 13 && age <= 19
age.betwee?(13,19)

# Full list of comparison operators in ruby
x > y   #greater than
x < y   #less than
x == y  #equal
x >= y  #greater than or equal to
x <= y  #less than or equal to
x <=> y #returns 0 if x and y are equal, if 1 if x is higher, and -1 if x is lower
x != y  #not equal to

#you can group multiple expressions into a single expression 
puts "You're a teenager" if age > 12 && age < 20

# you can also check whether one or the other is true by using || 

# puts "avery young or old man" if gender == "male" && (age < 18 || age > 85)

#---

# looping through numbers with blocks and iterators
# Nearly all programs require certain operations to be repeated over and over again to accomplish a result.
x = 1
puts x
x += 1
puts x
x += x

# A better way
5.times do puts "Test" end 

# An even better way 
5.times { puts "test" }

# In Ruby, one mechanism to create a loop is called an *iterator*
# An iterator is something that progresses through a list of items one by one
1.steps(50,5_ {puts "test"}

# What isn't obvious is how to get a hold on the number being iterated upon at each step of the way

# Ruby has a Float class which allows you to work with more precision. Like 10.23 instead of 10
# You can do this
x = 10
y = 3
puts x.to_f / y.to_f 

# ---

# Constants

Pi = 3.141592

# ---
# Constants 
# Constants are variables that will never change. Ruby will let you, but warn you. I wouldn't do it. 
# Classes are seen as constants. Once created they should not be changed. 


# Strings
# A string is a collection of textual characters (including digits, letters, whitespace, and symbols) of any length
# when a string is embedded directly into code, using quotation marks as earlier, the construction is called a string literal. This differs from a string whose data comes from a remote source, such as a user typing in text, a file, or the internet. Any text that's pre-embedded within a program is a string literal.

# Strings can be included in operations, added to, and compared against. You can also assign strings to variables.
# String can also have comparison operators 
puts "a" < "b"
# returns true

# Every character has a ASCII table. "A" = 97 and "b" = 98

# ---

#Interpolation
x = 10
y = 20
puts "#{x} + #{y} = #{x + y}"
# 10 + 20 = 30 

# ---

# Regular Expressions and string manipulations
# You'll need regex to work with strings at a higher level. 
# A regular expression is a string that descriptes a pattern for matching elements in other strings.

# Substitutions aka sub string method
puts "foobar".sub('bar', 'foo')
#foofoo
#sub only can do one substitution at a time

puts "this is a test.gsub("i","")"
#gsub can do multiple substitutions

# Iteration with regular expressions
# 

# ---


