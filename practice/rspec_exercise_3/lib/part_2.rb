def element_count(array)
    hash = {}
    array.each do |word|
        if hash[word] == nil
            hash[word] = 1
        else 
            hash[word] += 1
        end
    end

    hash
end

def char_replace!(str, hash)
    (0...str.length).each do |i|
        if hash[str[i]] != nil
            str[i] = hash[str[i]]
        end
    end

    str
end

def product_inject(arr)
    arr.inject {|acc, el| acc * el}
end
