# A semicolon is not needed in Ruby


# Reading a book or watching tutorials will only give you an academic sense—which is sub-par. The proof is in the practice. 

# You can only master a language or programming concepts by experimenting as you go along. 

# When we define an object-oriented concept, we call them classes. A class is the definition of a single type of object. Class names always start with an uppercase letter. 

class Person
	attr_accessor :name, :age, :gender
end

# attr stands for attribute, accessor roughly means "make these attributes accessible to be set and changed at will" That means when your working with a Person object in your code, you can change the person's name, age, and gender. 

person_instance = Person.new
person_instance.name = Tim
person_instance.age = 31
person_instance.gender = male 

#Variables are a placeholder for data in your program. Variables can be assigned to numbers, text, or any other data structures. 

#Inheritance is an important concept for object-oriented programming. Inheritence allows different classes that relate to one another and groups them by their similarities. You create a parent class then let children classes the attributes. 

class Cat
	attr_accessor :name, :age, :color
end

class Dog 
	attr_accessor :name, :age, :color
end 

# This is the slow way to do it. We can do it better.

class Pet 
	attr_accessor :name, :age, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet 
	attr_accessor :length
end 

#notice how an attribute can be added for the snake. A great benefit of inheritance. 

# Methods are an important in Ruby. They enable you to tell your objects to *perform* something. For example: 
class Dog < Pet 
	def bark
		puts "Woof!"
	end
end

a_dog = Dog.new
a_dog.bark 
#woof!


#Let's breakdown what's happening
# 1. We created a dog class
# 2. We created a method
# 3. We assigned a variable (a_dog) to a new object based on the dog class
#.4. We called the dog method and it ran the instructions as we defined them

# Everything in ruby is an Object, meaning that if you keep tracing up the chain of objects and classes you'll see that it's cleanly structured. You can inspect an object by typing: 

a_dog.class 
#Dog

# If you try:
puts 2.class
# Integer

# You could add more functionality to the Integer class to compute integers in new ways. 

# "Kernal" is a special class whose methods are made available in every class and scope throughout Ruby. It's avialable always without fail. 

#Puts is a method made avialable from the Kernel module—a special type of class packed full of standards, commonly used methods, making your  code easier to read and write. 

# You can easily pass data into methods 

class Dog
	def bark(i)
		i.times. do
			puts "Woof!"
		end
	end
end

my_dog = Dog.new
my_dog.bark(3)
#Woof!
#Woof!
#Woof!

