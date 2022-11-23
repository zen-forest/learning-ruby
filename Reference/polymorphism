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