# Arrays and lists 
# After working with number and string objects, it becomes necessary to create collections of objects and work with thme as a list. In Ruby, you can represent ordered collections of objects using arrays. 
x = [1tx
  # 2x
  # 3x
  # 4x 
  # The each method passes each item in the arrow through the block 
  
  x = [1, "test",2,3,4]
  
  def print_out(i)
    puts i
  end
  
  x.print_out
  
  )
  
  [1, "test",2,3,4].each { |element| puts element.to_s + "x"}
  
  # Remember that all of the iterators automatically pass the state of the iteration to the looped code as a parameter, which you can then retrieve into a variable and use. 
  # More context here https://stackoverflow.com/questions/4240620/can-someone-explain-rubys-use-of-pipe-characters-in-a-block
  
  # the collect method allows you to iterate through elements . You can also perform conversion on an array like so:
  [1,2,3,4].collect { |e| e*2 }
  
  # Heres an example of "the old fashioned way" aka non-oop
  
  a = [1,"test",2,3,4]
  i=0
  while(i < a.length)
    puts a[i].to_s + "X"
    i += 1
  end
  # array methods like each and collect make the code significantly more easy to read 
  
  # There are more array methods: 
  x = [1,2,3]
  y = ["a","b","c"]
  z = [x+y]
  p
  
  # Array subtracking and difference
  x = [1,2,3,4,5]
  y = [1,2,3]
  z = x-y
  p z
  # This removes duplicates 
  
  # Checking for an empty array 
  x []
  puts "x is empty" if x.empty?
  
  # Checking an array for a certain item. The include? method returns true if the supplied parater is in the array and false otherwise 
  x = [1,2,3]
  p x.include?("x")
  p x.include(3)
  
  # Accessing the first and last element of an array
  x = [1,2,3]
  puts x.first
  puts x.last
  
  # Reversing the order of the array's element 
  x = [1,2,3]
  p x.reverse
  ,2,3,4]
  x[2] is 3
  
  # Elements can be accessed by their index. To access a particular element, an array (or a variable containing an array) is followed by the index contained within square brackets.
  
  # to assign a new value to an existing array:
  x[2] += 1 
  
  # Arrays act like a stack "Last in, first out"
  x = []
  x << "Word"
  x << "Fun" 
  puts x.pop
  puts x.pop
  puts x.length
  
  puts "This is a test".scan(/\w/).join(', ')
  T, h, i, s, i, s, a, t, e, s, t
  
  # Array Iteration
  # Iterating through arrays is simple and uses the each method. 
  [1, "test",2,3,4].each { |element| puts element.to_s + "x"}
  # 1x
  # tes