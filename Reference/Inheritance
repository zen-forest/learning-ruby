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