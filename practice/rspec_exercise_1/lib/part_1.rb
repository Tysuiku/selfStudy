def average(n1, n2)
    (n1 + n2) / 2.0
end

def average_array(numbers)
    numbers.sum / (numbers.length * 1.0) 
end

def repeat(str, n)
    str * n.to_i
end

def yell(str)
    newstring = str.upcase + "!"
end

def alternating_case(sentence)
    newsen = []
    words = sentence.split(" ")
    (0...words.length).each do |i|
        if i % 2 == 0 
            newsen << words[i].upcase
        else 
            newsen << words[i].downcase
        end
    end
    newsen.join(" ")
end