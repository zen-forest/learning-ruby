# Hashes wthin Hashes
# It's possible to hashes, or any sort of object, within hashes, and even arrays with hashes. You could create a giant tree structure with hashes and arrays.
people = {
  fred: {
    name: "Fred Elliott",
    age: 63,
    gender: "male",
    favorite_painters: ["Monet", "Constable", "Da Vinci"]
  },
  Janet: {
    name: "Janet S Porter",
    age: 55,
    gender: "female"
  },
  Tim: {
    name: "Tim Collins",
    age: 31,
    gender: "male",
    favorite_painters: ["Hopper", "Caravaggio", "Monet"]
  }
}
# How to select pieces of the hash. This is a chain of lookups
puts people[:Tim][:age]

# Flow Control
age = 10
puts "I'm age 10" if age < 18
# If and unless
if age < 18
  puts "You're too young to use this system"
end

# Unless is a great operator, I like it. More drastic in a way.
age = 10
unless age >= 18
  puts "You're too young to use this system"
  if age >= 18
    puts "but you can in the UK!"
  end
end