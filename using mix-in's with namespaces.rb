# Using mix-in's with namespaces
module ToolBox2
  class Ruler 
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox2::Ruler.new
a.length = 50
b = Country::Ruler.new 
b.name = "Genghis Khan of Moskau"
# In these cases Ruler was accessed by addressing thier respective modules 
# However, what if you wanted to assume temporarily that Ruler (with no module prefix) was Country::Ruler and that 
# you wanted to refer to it directly 
# include makes that possible 

include Country 
c = Ruler.new
c.name = "King Henry"
# Wow, so include takes Country's scope and brings itinto the current scope 
# Toolbox::Ruler is still accessible 

