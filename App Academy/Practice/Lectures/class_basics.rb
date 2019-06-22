
#defining a calss
class Cat
    def initialize(name, color, age)
        @name = name
        @color = color 
        @age = age
    end
# getter methods 
    def get_name
        @name 
    end

    def get_age
        @age
    end

    def get_color
        @color
    end

    #setter methods
    def age=(new_age)
        @age = new_age
    end

    def meows_at(person)
        puts "#{@name} meows at #{person}"
    end
end

# initialize and instance of Cat
cat_1 = Cat.new("Sennacy", "brown", 4)
p cat_1.get_name

cat_3 = Cat.new("Tiger", "Red", 3)
p cat_3.meows_at("Steve")
