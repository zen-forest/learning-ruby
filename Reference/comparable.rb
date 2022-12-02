# Comparable 
# The Comparable module provides methods that give other classes comparion operators such as < (less) than, <=(less than or equal to), ==(equal to), >=(greater than or equal to), and > (greater than)
# As well as Between? that returns true if the value is between the two parameters 
1 <=> 2
# => -1

1<=>1
# => 0

2 <=> 1
# => 1

class Song
  include Comparable 
  attr_accessor :length

  def <=>(other)
    @length <=> other.length 
  end

  def initialize(song_name, length)
    @song_name = song_name
    @length = length 
  end
end

a = Song.new('Rock around the clock', 143)
b = Song.new('bohemian rhapsody', 544)
c = Song.new('Minute Waltz', 60)

a < b
# => true

b >= c
# => true

c > a
# => false

a.between?(c,b)
# => true