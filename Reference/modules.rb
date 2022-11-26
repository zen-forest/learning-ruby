# Namespaces
# One feature in Ruby is the ability to include code situated in other files into the current program
# With outside code, it's easy to run into conflicts
def random
  rand(100000)
end

# puts random
# This example shows that there are conflicts which can be worked around with different namespacing
# Modules are the saving grace - they help you avoid these by creating a namespace for classes, methods, constants, and variables
module NumberStuff
  def self.random
    rand(100000)
  end
end

module LetterStuff
  def self.random
    (rand(26)+65).chr
  end
end

# puts NumberStuff.random
# puts LetterStuff.random

# Another example with more complexity
module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Genhis Khan from Moskau"

# Rather than having Ruler and Coutry battling it out over Ruler, they are kept separately. 