
#defining a calss
class Cat
    def initialize(name, color, age)
        @name = name
        @color = color 
        @age = age
    end
end

# initialize and instance of Cat
cat_1 = Cat.new("Sennacy", "brown", 4)
p cat_1

cat_2 = Cat.new ("Whiskers", "white", 4)
p cat_2