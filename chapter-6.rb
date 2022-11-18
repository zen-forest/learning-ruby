
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

# Inheritance 
# Inheritance allows you to generate a taxonomy of classes and objects
class ParentClass
  def method1
    puts "hello from method1 in the parent class"
  end
  def method2
    puts "Hello from method 2 in the parent class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the child class"
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2
# method2 in the ChildClass overrides the class from ParentClass

class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class Doctor < Person 
  def name
    "Dr. " + super
  end
end

p = Person.new("Bill")
puts p.name
# Very cool. "super" looks up the inheritance chain and allows to reference that method within a new context
# The benefits of using inheritance this way is that you can implement generic functionality in generic classes and then implement only the specific functionality
# that is more specific child classes equire. This saves a lot of repetition and means that if you make changes to parent classes, child classes will inherit these changes too. 
# When you have hundreds of different classes in an application, it pays to cut down on repetition! 

# Overriding Existing Methods 
# let's override Ruby's String class

x = "this is a test"
puts x.class

# String methods
puts x.length
puts x.upcase

class String
  def length
    20
  end
end

puts "This is a test".length
puts "a".length
puts "A really long line of text".length

# ---

# Some libraries and extensions to Ruby override the methods supplied by the core classes to 
# extend the functionality of Ruby in general. 
# tread with caution 
# you can override your own methods

class Dog
  def talk
    puts "Woof!"
  end
end

my_dog = Dog.new
my_dog.talk

class Dog
  def talk
    puts "Howl!"
  end
end
my_dog.talk

# Reflection and Discovering an Object's Methods 
# Reflection is the process by which a computer program can inspect, analyze, and modify itself while it's running
# and being used 
a = "This is a test"
# puts a.methods.join()

# The methods method on any object (unless it has been overridden) returns an array of methods 
# made available by that object. 

# The results reveal some other reflective methods too. For example, protected_methods, 
# private_methods, and public_methods all reveal methods encampsulated in different ways 

# ---

# Another interesting method is instance_variables It returns the names of any object variables associated with an instance
class Person2
  attr_accessor :name, :age
end

p = Person2.new
p.name = "Fred"
p.age = 20
puts p.instance_variables

class Person3

  def initialize(name)
    set_name(name)
  end

  def name
   @first_name + ' ' + @last_name
  end

private 

  def set_name(name)
    first_name, last_name = name.split(/\s+/)
  end
  
  def set_first_name(name)
      @first_name = name
  end

  def set_last_name(name)
    @last_name = name
  end
end

p3 = Person3.new("Fred Bloggs")
# p3.set_last_name("Smith")
# puts p3.name
# This example didn't work, got an error, no help on stack overflow
# I suspect that + is getting parsed in a way where it's not seen as an operator
# I don't think this will be as much as an issue when using attr_accessor (likely the best way)


# You can revert between public and private 
class Person4
  #These semicolons are for the example, don't do this in production code
  def anyone_can_access_this
  end
  def this_is_private
  end
  def this_is_also_private
  end
  def another_public_method
  end

  private :this_is_private, :this_is_also_private

end
puts Person4.methods

# Polymorphism
# Polymorphism is the concept of writing code that can work with objects of multiple types and classes at once. 

class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def talk
    "Meow!"
  end
end

class Dog1 < Animal
  def talk
    "Woof!"
  end
end

animals = [Cat.new("Flossie"), Dog1.new("Clive"), Cat.new("Max")]
animals.each do |animal|
  puts animal.talk
end
# This shows how you can loop over and work on obojects of different classes, but get expected results in each case if each class implements the same methods. 
# Some of Ruby's built-in standard classes (such as Array, Hash, String) have polymorphic methods built-in classes to return the contents of the object as a string
puts 1000.to_s
puts [1,2,3].to_s
puts ({name: "Fred", age: 10}).to_s
# In other words, polymorphism is a way to abstract out elements of similar classes in a way where those base elements that can affect multiple different types of classes
# can live within the higher-level class. 

# Nested Classes
# They are useful when a class depends on other classes, but those classes aren't necessarily useful anywhere else. 
# It's useful when you want to seaprate classes into groups of classes instead of when you want to keep them distinct.
class Drawing
  def self.give_me_a_circle
    Circle.new
  end

  class Line
  end

  class Circle
    def what_am_i
      "This is a circle"
    end
  end
end

# Calls the .give_me_a_circle method which returns a new instance of Drawing::Circle
x = Drawing.give_me_a_circle
puts x.what_am_i


y = Drawing::Circle.new
puts y.what_am_i

# This does not work because Circle doesn't exist. 
# z = Circle.new
# puts z.what_am_i


class Bicycle
  def self.give_me_a_bike
    Mtb.new
  end

  class Mtb 
    puts "I'm an off road bicycle"
  end

  class Roadbike
    def what_am_i
      puts "I'm a road bike"
    end
  end
end

a = Bicycle::Roadbike.new
puts a.what_am_i


# The scope of constants 
def circumference_of_circle(radius)
  2 * Pi * radius
end

Pi = 3.141592
# puts circumference_of_circle(10)

class OtherPlanet
  Pi = 5.6
  def self.circumference_of_circle(radius)
    radius * 2 * Pi
  end
end

puts OtherPlanet.circumference_of_circle(10)
puts OtherPlanet::Pi

# This example demonstrates that constants have scope within the context of classes. 
# The OtherPlanet class has it's own definition of Pi. 
# If you hadn't redefined the original Pi would have been avialable to Other Planet



# ---

# Encapsulation 
# Encapsulation describes teh way in which data and methods can be bundled together into obojects
# that operate as a single unit. Encapsulation keeps functionality hidden inside your classes and allows you to control how
# the outside world manipulates your objects. 

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