
# Local, Global, and Class Variables
class Square
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end
end

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area

# Initialize is a special method that's called when a new object based on that class is created.
# When Square.new(10) was called, the Square class creates a new object instance of itself and calls initialize on that object. 
# In initialize, it accepts a single argument into side_length to a new variable with an '@'
# The '@' symbol is an instance variable. Meaning they have scope within, and are associated with the current object.

# Local variables
x = 10
puts x
# It can only be used in the same place it is defined
# If you jump to using an object's method or a separate method of your own, it doesn't come with you. 
# It is local in *scope*. It's only present within the local area of code
def basic_method
  puts x
end

# x = 10
# basic_method
# This could would result in an error. 
# It's important to only use local variables where they're being directly used. 

# An example of two local variables with the same name and different scopes
# def basic_method
#   x = 50
#   puts x
# end

# x = 10
# basic_method
# puts x 
# This shows that local variables live entirely in their original scope. 
# The x variable in the method 

# Global Variables
# Global variables are accessible from everywhere within an application, including classes and objects. 
# You define global variables with a $. 
def basic_method
  puts $x
end

$x = 10
basic_method
# The $ and @ are known as Sigils. Cool.

# Instance and object variables
# Refer to square example above
# Instance variables are prefixed with an @ symbol
# It is accessible from any other method inside that object 

# Class variables 
# The scope of a class variable is within the class itself, as opposed to within specific objects of that class. 
# Class variables start with two @@ symbols as opposed to the single @symbol
class Square2
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end

  def self.count
    @@number_of_squares
  end
end

c = Square2.new
b = Square2.new
puts Square2.count 
# Class variables are useful for storing information relevant to all objects of a certain class. 
# I'm not sure how useful this will be, but I have more to learn.

## Class Methods vs. Instance Methods 
# Instance Methods relate to, and operate directly on, an instance of an object. 
# Instance methods are methods that become avialable when an object is instantiated based on a class. 
class Square3 
  def self.test_method
    puts "Hello from square3 class!"
  end
  def test_method
    puts "Hello from an instance of class Square3!"
  end
end 

Square3.test_method
Square3.new.test_method
# Adding the self. prefix makes this method a class method 
# Any method defined without a prefix is an instance method 
# Class objects can be used for things such as the "object counter" using the @@ symbol (or class variable)

class Square4
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
  else
    @@number_of_squares = 1
  end
end
  def self.count
    @@number_of_squares
  end
end
# Consider if as if you're asking the class to do something that's relevant ot the class as a whole, rather than asking the objects. 

d = Square4.new
puts Square4.count
e = Square4.new
puts Square4.count
f = Square4.new
puts Square4.count

# ---

# Classes
# A class is a collection of methods and data that are used as a blueprint to create multiple objects relating to that class. 

# Objects
# An object is a single instance of a class. An object of class Person is a single person. An object of Dog is a single dog. If you think of 
# objects as real-life objects, a class is the classification, whereas the object is the actual object or "thing" itself.

# Local Variables
# A variable that can only be accessed and used from the current scope. 

# Instance variable/object variable
# A variable that can be accessed and used from the scope of a single object. An object's methods can all access that objects object variables. 

# Global Variable
# A variable that can be accessed and used from anywhere within the current program. 

# Class variable
# A variable that can be accessed and used within the scope of a class and all of its child objects. 

# Encapsulation
# The concept of objects containing both data and methods that operate on that data, as well as allowing those methods to have differing degrees of 
# visibility outside of their class or associated object. 

# Polymorphism
# The concept of methods being able to deal with different classes of dat and offering a more genereric implementation.

# Module
# An organizational element that collects together any number of classes, methods, and constants into a single namespace. 

# Namespace
# A named element of organization that keeps classes, methods, and constants from clashing. 

# Mix-in
# A module that can mix its methods into a class to extend that class's functionality

# Enumerable
# A mix-in modulem provided as standard with Ruby, that implements iterators and list-related methods for other classes, such as 
# collect, map, min, and max. Ruby uses this module by default with Array and Hash classes.

# Comparable
# A mix-in module, provided as standard with Ruby, that implements comparison operators (such as <,>, and ==) on classes that 
# implement the generic comparison operator <=>.