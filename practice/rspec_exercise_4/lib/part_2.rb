def proper_factors(n)
    newarr = []
    (1...n).each do |i|
        if i < n && n % i == 0
            newarr << i 
        end
    end

    newarr
end

def aliquot_sum(n)
    factors = proper_factors(n)
    factors.sum
end

def perfect_number?(n)
    n == aliquot_sum(n)
end

def ideal_numbers(n)
    perfect = []
        
    i = 1
    while perfect.length < n
        if perfect_number?(i)
            perfect << i
        end
        i +=1 
    end

    perfect
end