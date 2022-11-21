# class Cat 
#     attr_accessor :name, :color, :age
#     def initialize(name, color, age)
#         @name = name
#         @color = color
#         @age = age
#     end

#     # def get_name
#     #     @name
#     # end

#     # def get_color
#     #     @color
#     # end

#     # def get_age
#     #     @age
#     # end
    
#     # def purr
#     #     if @age > 5
#     #         p @name.upcase + "goes purrrrr...."
#     #     else
#     #         p "..."
#     #     end
#     # end

# end



# cat_1 = Cat.new("Sennacy", "brown", 3)
# cat_2 = Cat.new("Whiskers", "white", 5)

# p cat_1.name
# #testing

result = Array.new(3){Array.new(3){[]}}
result[0][0][0] = 2
p result