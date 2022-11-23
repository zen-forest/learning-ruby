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