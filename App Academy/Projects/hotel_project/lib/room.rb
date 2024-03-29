class Room
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full? 
        if occupants.length < self.capacity
            return false
        end
        if occupants.length == @capacity
            return true
        end
    end

    def available_space
        @capacity -= occupants.length
    end

    def add_occupant(name)
        if self.full?
            return false
        end
        @occupants << name
        true
    end
end
