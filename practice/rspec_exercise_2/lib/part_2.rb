def palindrome?(str)
    newstr = ""
    str.each_char do |char|
        newstr = char + newstr 
    end

    str == newstr
end

def substrings(str)
    substr = []
    (0...str.length).each do |i|
    (i...str.length).each do |j|
        substr << str[i..j]
    end
    end

    substr
end

def palindrome_substrings(str)
    substr = substrings(str)
    pali_sub = []
    substr.each do |sub|
        if palindrome?(sub) && sub.length > 1 
            pali_sub << sub
        end 
    end
    
    pali_sub
end