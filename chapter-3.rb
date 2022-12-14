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
x = [1tx
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
,2,3,4]
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
# tes
# ---

# Hashes
# Arrays are collections of objects, and so are hashes. This is not proper syntax but will change when we learn about symbols.
dictionary = { cat: "feline animal", dog: "canine animal"}
puts dictionary.size

# Here's how to access an item:
puts dictionary[:cat]
# feline animal

# Hashes can be viewed as an array that has names for elements instead. 
dictionary[:cat] = "fuffly animal"

# Basic Hash Methods

# Iterating through hash elements 
x = {"a" => 1, "b" => 2}
x.each { |key,value| puts "#{key} equals #{value}" }

# Retrieving keys
x = { a: 1, b: 2, c: 3 }
p x.keys 

# Deleting Hash elements 
x = {a:1, b:2, c:3}
x.delete(:a)

# Deleting hash elements conditionally 
x = { a:100, b: 20}
x.delete_if { |key, value | value < 25 }

# Hashes wthin Hashes
# It's possible to hashes, or any sort of object, within hashes, and even arrays with hashes. You could create a giant tree structure with hashes and arrays.
people = {
  fred: {
    name: "Fred Elliott",
    age: 63,
    gender: "male",
    favorite_painters: ["Monet", "Constable", "Da Vinci"]
  },
  Janet: {
    name: "Janet S Porter",
    age: 55,
    gender: "female"
  },
  Tim: {
    name: "Tim Collins",
    age: 31,
    gender: "male",
    favorite_painters: ["Hopper", "Caravaggio", "Monet"]
  }
}
# How to select pieces of the hash. This is a chain of lookups
puts people[:Tim][:age]

# Flow Control
age = 10
puts "I'm age 10" if age < 18
# If and unless
if age < 18
  puts "You're too young to use this system"
end

# Unless is a great operator, I like it. More drastic in a way.
age = 10
unless age >= 18
  puts "You're too young to use this system"
  if age >= 18
    puts "but you can in the UK!"
  end
end

# if you type "exit", IRB will exit, even if it's in a method. 

# ---

# The Ternary Operator
# Many Ruby programmers are unawarer of the Ternary Operator, but it makes it possible for an expression to contain a mini if/else statement. 
# It can make your code more compact.
age = 10
type = age < 18 ? "child" : "adult"
puts "You are a " + type 

# WHat is an expression? 
# An expression is a unit of code that resolves to a value. 

# Consider the code below:
name = "Tim"
type = name == "Tim" ? "welcome home!"  : "this is not your home"
# After the question mark, the first is option is true, the second is if it's false

# This is the same as above^^
age = 10
type "child" if age < 18
type = 'adult' unless age < 18
puts "You are a" + type

# And this^^
age = 10
if age < 18
  type = "child"
else
  type = "adult"
end
puts "You are a " + type 

# Sometimes it's desirable to make several comparisons with the same variable at the same time. You could do with the if statement, as covered previously.
fruit = "orange"
color = "orange" if fruit == "orange"
color = "green" if fruit == "apple"
color = "yellow" if fruit == "banana"

# A better way to structure this is: 
fruit = "orange"

if fruit == "orange"
  color = "orange"
elseif fruit == "apple"
  color = "green"
elseif fruit == "banana"
  color = "yelow"
else
  color = "uknown"
end

# ---

# Elsif & Case
fruit = "orange"
color = "orange" if fruit == "orange"
color = "green" if fruit == "apple"
color = "yellow" if fruit == "banana"

# Another way to write this with elseif
fruit = "orange"
if fruit == "orange"
  color = "orange"
elsif fruit == "apple"
  color = "green"
elsif fruit == "banana"
  color = "yellow"
else
  color = "unknown"
end
# Pretty straightforward conditional stuff. 

# A variant of this technique is called the case block
fruit = "orange"
case fruit
when "orange"
  color = "orange"
when "apple"
  color = "green"
when "banana"
  color = "yellow"
else
  color = "unknown"
end
# This close is similar to the if block, expect that the syntax is cleaner. 
# A case block works by processing an expression first and then by finding a contained when block that matches the result. 
# If nmatching block is found, then the else block wthin the case block is executed instead. 

# Case pattern matching

# Using the case statement and pattern patching makes it easy to deconstruct complex objects and use their data. 
response = {error: "Bad Gateway", code: 502 }
case response
  in {data: data, code: code }
  puts "Success #{data}, Code: #{code}"
  in {data: error, code: code }
  puts "Success #{error}, Code: #{code}"
end
# Pattern matching can be very useful. Pattern matching works with arrays, ranges, and objects. 

# We've learned this already
1.upto(5) { |number| puts number }

# It's possible to loop code in other ways. While runs based on an expression in this case while x is multiplied by two.
x = 1
while x < 100
  puts x
  x = x*2
end

x = 1
until x > 99
  puts x 
  x = x*2
end

# what's the difference between while and until? 
# while denotes that a section of code that is to be repeated over until the expression is satisfied.
# Until denotes that a block of code runs until a certain condition is met. 
# While loop ex: you can play video games as long as you feel like it
# Until loop: you can play video games until you don't feel like it. 

# It's possible to use both while and until in a singel line setting, as with if and unless
# There's another way to write this:
i = 1
i = i*2 until i > 1000
puts i

# ---

# Code Blocks

# The each method accepts a single following code block. 
# The code block is defined within the {} symbols, or do and end delimiters
x = [1,2,3]
x.each { |y| puts y }

# This is an alternate way to write this. Notice that |y| is a parameter
x = [1,2,3]
x.each do |y|
  puts y
end

# You can use a short-hand such as _1 to forego defining the paramter for the block
# This can be useful if defining the parameter has little to no value. 
x = [1,2,3]
x.each do
  puts _1
end

# You can write methods of your own to handle code blocks, for example:
def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel)}
end
each_vowel {|vowel| puts vowel}
# a
# e
# i 
# o
# u
# each_vowel is a method that accepts a code block thanks to &code_block
# %w{a e i o u} is array literal, meaning it's hard coded and not assigned to variable
# .each iterates over each vowel
# the .call executes the code block once for each vowel, passing in the vowel variable as a paramter each time

# %w{} was confusing but I found help here: https://www.zenspider.com/ruby/quickref.html#types
# It converts %w{a e i o u} to ["a", "e","i","o","u"]
# Fascinating

# An alternative technique is to use the yield method which automatically detects any passed code block and passes to control it
def each_vowel
  %w{a e i o u}.each { |vowel| yield vowel }
end
each_vowel { |vowel| puts vowel }

# What technique you use is up to you. One downside to the code above is that it's less clear what's happening
# yield statements allow you to call any method with a block of code
# The number of arguments passed to the block has no limitations 
# As many times we will write the yield inside the method it will try to call block
# To pass arguments from yield to the block we can write || inside the block as the argument


# Another view on yield from this guide here 
# https://www.rubyguides.com/2019/12/yield-keyword/

#here's what you need to know
# Calling a block runs the code inside the block 
# Yield can pass any number of arguments to the block 
# The block???s return value becomes the return value for yield

def make_salad
  yield "lettuce"
  yield "carrots"
  yield "olive oil"
  yield "tomatoes"
end

make_salad { |i| puts "Adding #{i} to salad!" }
# or
make_salad do
  |i| puts "Adding #{i} to salad!"
end


# I'm studying this to support my learning
# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/



# Here's another example

def test
  yield 2*3
  yield 100
  puts "I the method test"
end

test { |i| puts "block #{i}"}

# only one code block can be passed at anyone time. It's not possible to accept two or more code blocks as parameters to a method. 
# Code blocks may accept none, one, or more parameters themselves.

# ---

# Proc
# It's possible to store code blocks within variables, using a proc
print_parameter_to_screen = Proc.new { |x| puts x }
print_parameter_to_screen.call(100)
# As with accepting a code block into a method, you use the Proc object's call method to execute it
# As well as to pass any parameters in

# ---

# Lambda
# Another way to define code blocks. There are a couple differences between procs and Lambdas
# Lambda's check if the number of parameters check the signature
# Lambda's return just like a ruby method, while a proc returns from the current context. 
# A proc returns from the current context. 

# ---

# Dates & Times
puts Time.now
puts Time.now - 10

# One cool thing you can do is extend the Integer class to have some helpful methods
class Integer
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end 
  def days 
    self  * 60 * 60 * 24
  end
end

# ---

year = 2020
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 24
Time.local(year, month, day,hour, min, sec, msec)
# This creates a Time object based on the current (local) time zone. 

# Time is calculated based on the Unix time epoch 
Time.gm(2020, 02).to_i
# 1580515200
# You can create different objects based on timecodes
# Time.gm

Time.gm(2020,02).to_i
epoch_time = Time.gm(2020,2).to_i

# ---

# Ranges
# It's useful to be able to store the concept of a list, instead of it's actual contents.
# If you wanted to represent all the letters between A and Z, you could create an array like:
x = ['a','b','c','d','e']
('a'..'z')

('a'..'z').to_a.each { |letter| print letter}
# Here's another way to write this since the array class has a .each method
('A'..'Z').each { |e| print e }

# You can also use a method to see if something is within a range.
('A'..'Z').include?('R')
# returns true
('A'..'Z').include?('r')
# returns false as it's not a lower case
a = [2,4,6,8,10,12]
p a[1..3]

# ---

# Symbols!
# Synbols are abstract references represented, typically by a short string prefixed with a colon. 
# Examples are
:blue, :good, :name 
# Symbols will take time and repeated exposure to understand how they work
# It's worth the effort! 

current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC" if current_situation == :bad

# Symbols don't contain values or objects, like variables do. Instead they're used as a consistent name within code. 


# you can do this???but
current_situation = "good"
puts "Everything is fine" if current_situation == "good"
puts "PANIC" if current_situation == "bad"
# it's not as efficient. Every mention of "good" or "bad" stores a new object in memory
# A symbol 

# I was able to grock symbols when I thought of it like this.
# A Ruby string is an object that has a bunch of methods and properties. 
# People like to use strings for keys, and when the string is used for a key then all those extra methods aren't used. 
# So they made symbols, which are string objects with all the functionality removed, except that which is needed for it to be a good key.

# Just think of symbols as constant strings.

#Alternate example
string1 = "Ruby"
string2 = "Ruby"
string1.object_id == string2.object_id
# returns false

x = 3
y = 3
x.object_id == y.object_id    
# returns false

sym1 = :symbol
sym2 = :symbol
sym1.object_id == sym2.object_id 
# returns true

# You can think of a symbol as a literal constant with no value. 
# A symbol is useful in situations where you don't necessarily want to store an actual value, just a concept or an option

# Symbols are useful when creating hashes and you want to have a distinction between keys nad values for example. 
person1 = {name: "Fred", age:20, gender: :male }
person2 = {name: "Laura", age:23, gender: :female }
# Many methods provided by Ruby classes use this style to pass infomration into that method (and return values)
# Think of symbols are less flexible, straitjacketed strings that we use as identifiers. 
# Objects and classes are also types of data

# Almost every line of code you'll write will contain an expression, an iterator, or some form of logic. 



# ---

