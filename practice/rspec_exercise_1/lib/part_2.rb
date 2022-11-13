def hipsterfy(word)
    vowel = "aeiou"
    
    (word.length-1).downto(0).each do |i|
        if vowel.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
    end

    word
end

def vowel_counts(str)
    hash = {}
    str.each_char do |char|
        if hash[char.downcase] == nil
            hash[char.downcase] = 1
        else 
            hash[char.downcase] += 1
        end
    end

    hash
end

def caesar_cipher(str, n)
    alphabet = ("a".."z").to_a
    newstr = ""

    str.each_char do |char|
        if alphabet.include?(char)
            old_idx = alphabet.index(char)
            new_idx = old_idx + n
            newstr += alphabet[new_idx % 26]
        else
            newstr += char
        end
    end

    newstr
end