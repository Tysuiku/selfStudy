class Room

    attr_reader :capacity, :occupants
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity=
        @capacity
    end

    def full?
        if @occupants.length < @capacity
            return false
        end
        true

    end

    def available_space
        @capacity - @occupants.length
    end

    def add_occupant(name)
        if !self.full?
            @occupants << name
            return true
        end

        false
    end
end