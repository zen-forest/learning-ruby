# Mix-ins
# Ruby doesn't support multiple inheritances 
# Instead Ruby's inheritance functionality only lets you create simple trees of classes

# modules act as bundles of methods, classes, and constants that can be included into other classes that can be included into other classes 
module UsefulFeatures
  def class_name
    self.class.to_s
  end
end

class Subfeature
  include UsefulFeatures
end

t = Subfeature.new
puts t.class_name

# useful features looks almost like a class and, well, it almost is. 
# modules are organizational tools rather than classes themselves. 
# The class_name method exists within the module and is then included in the Subfeature class. Here's another example:
module AnotherModule
  def do_stuff
    puts "This is a method doing stuff"
  end
end

include AnotherModule
do_stuff
# Interesting, you can include module methods in the current scope even if you're not directly with a class. 
# Like a class, you can do this too: 
AnotherModule.do_stuff
# Include takes a module and includes its contents into the current scope. 
# Ruby comes with several modules by standar than you can use. 
# The kernel module contains all the "standard" commands you use in Ruby such as load, require, exit, puts, and eval
# Ruby has  modules that you can include in your own classes to gain more functionality immediately. Two such are: Enumerable and Comparable