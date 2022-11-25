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

# puts OtherPlanet.circumference_of_circle(10)
# puts OtherPlanet::Pi

# This example demonstrates that constants have scope within the context of classes. 
# The OtherPlanet class has it's own definition of Pi. 
# If you hadn't redefined the original Pi would have been avialable to Other Planet
