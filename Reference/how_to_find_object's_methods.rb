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