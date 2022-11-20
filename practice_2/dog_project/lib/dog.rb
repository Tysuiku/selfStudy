class Dog

    attr_accessor :name, :breed, :age, :bark, :favorite_foods

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def age=(number)
        @age = number
    end

    def bark
        if @age > 3 
            return @bark.upcase 
        else 
            return @bark.downcase
        end
    end

    def favorite_food?(food)
        @favorite_foods.any? { |favorite_food| favorite_food.downcase == food.downcase  }
    end

end
