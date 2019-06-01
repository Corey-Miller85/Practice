def to_initials(name)
parts = name.split(" ")
initials = "" #creates empty string. 
parts.each { |ele| initials += ele[0]}
return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

#so what we did here was with parts = name.split(" ") we broke every name at the space into arrays
#after that with Initials = "" we created an empty string to be a container for our initials 
# parts.each this will iterate throguh all of the elemnts in each array
# 