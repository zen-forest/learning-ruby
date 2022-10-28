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
"xyz".scan(/./) { |x| puts x }
# x
# y
# z

# ---


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

# ---

# Arrays and lists 
# After working with number and string objects, it becomes necessary to create collections of objects and work with thme as a list. In Ruby, you can represent ordered collections of objects using arrays. 
x = [1,2,3,4]
x[2] is 3

# Elements can be accessed by their index. To access a particular element, an array (or a variable containing an array) is followed by the index contained within square brackets.

# to assign a new value to an existing array:
x[2] += 1 

# Arrays act like a stack "Last in, first out"
x = []
x << "Word"
x << "Fun" 
puts x.pop
puts x.pop
puts x.length

puts "This is a test".scan(/\w/).join(', ')
T, h, i, s, i, s, a, t, e, s, t

# Array Iteration
# Iterating through arrays is simple and uses the each method. 
[1, "test",2,3,4].each { |element| puts element.to_s + "x"}
# 1x
# testx
# 2x
# 3x
# 4x 
# The each method passes each item in the arrow through the block 

x = [1, "test",2,3,4]

def print_out(i)
  puts i
end

x.print_out

)

[1, "test",2,3,4].each { |element| puts element.to_s + "x"}

# Remember that all of the iterators automatically pass the state of the iteration to the looped code as a parameter, which you can then retrieve into a variable and use. 
# More context here https://stackoverflow.com/questions/4240620/can-someone-explain-rubys-use-of-pipe-characters-in-a-block

# the collect method allows you to iterate through elements . You can also perform conversion on an array like so:
[1,2,3,4].collect { |e| e*2 }

# Heres an example of "the old fashioned way" aka non-oop

a = [1,"test",2,3,4]
i=0
while(i < a.length)
  puts a[i].to_s + "X"
  i += 1
end
# array methods like each and collect make the code significantly more easy to read 

# There are more array methods: 
x = [1,2,3]
y = ["a","b","c"]
z = [x+y]
p

# Array subtracking and difference
x = [1,2,3,4,5]
y = [1,2,3]
z = x-y
p z
# This removes duplicates 

# Checking for an empty array 
x []
puts "x is empty" if x.empty?

# Checking an array for a certain item. The include? method returns true if the supplied parater is in the array and false otherwise 
x = [1,2,3]
p x.include?("x")
p x.include(3)

# Accessing the first and last element of an array
x = [1,2,3]
puts x.first
puts x.last

# Reversing the order of the array's element 
x = [1,2,3]
p x.reverse

# ---

# Blocks
# We use anonymous blocks because the majority of functions passed as a block are usually specific to your situation and not worth defining for reuse.

# ---

