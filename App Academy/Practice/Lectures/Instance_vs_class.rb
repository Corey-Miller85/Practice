class Car
    def initialize(color)
        @color = color
    end

    def get_color
        @color
    end
end

car_1 = Car.new("Black")
car_2 = Car.new("Red")

p car_1.get_color