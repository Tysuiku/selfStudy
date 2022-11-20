require_relative "room"

class Hotel

    attr_reader :rooms
    def initialize(name, capacities) 
        @name = name
        @rooms = {}

        capacities.each do |room_name, capacity|
            @rooms[room_name] = Room.new(capacity)
        end
    end

    def name
        cap = []
        @name.split(" ").each do |word|
            cap << word[0].upcase + word[1..-1]
        end
        cap.join(" ")
    end

    def room_exists?(room_name)
        if @rooms[room_name] != nil
            return true
        end

        false
    end

    def check_in(person, room)
        if self.room_exists?(room)
            if @rooms[room].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does no exist"
        end
    end

    def has_vacancy?
        @rooms.values.any? { |room| room.available_space > 0}
    end

    def list_rooms
        @rooms.each do |k, v| 
            puts k + v.available_space.to_s
        end
    end
end
