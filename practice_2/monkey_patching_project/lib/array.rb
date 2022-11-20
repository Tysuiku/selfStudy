# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length < 1 
            return nil
        end
        self.max - self.min 
    end

    def average
        if self.length < 1 
            return nil
        end
        self.sum / (self.length * 1.0)
    end
    
    def median
        if self.length < 1 
            return nil
        end
        if self.length.odd?
            return self.sort[self.length / 2]
        else
            return (self.sort[self.length / 2] + self.sort[(self.length / 2) - 1]) / 2.0
        end
    end

    def counts 
        hash = Hash.new(0)
        self.each do |ele|
           if hash[ele] == 0
                hash[ele] += 1
           else
                hash[ele] += 1
           end
        end
        hash
    end

    def my_count(value)
        hash = self.counts
            hash[value]
    end

    def my_index(value)
        self.each_with_index do |ele, idx|
            if ele == value 
                return idx
            end
        end
        return nil
    end

    def my_uniq 
        uniq = []
        self.each do |ele|
            if !uniq.include?(ele)
                uniq << ele
            end
        end
        uniq
    end

    def my_transpose
        new_arr = []
        
        (0...self.length).each do |row|
            new_row = []

            (0...self.length).each do |col|
                new_row << self[col][row]
            end 

            new_arr << new_row
        end
            new_arr
    end
end
