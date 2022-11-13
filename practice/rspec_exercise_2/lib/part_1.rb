def partition(arr, n)
    less = []
    greater = []
    final = []

    arr.each do |num|
        if num >= n
            greater << num
        else 
            less << num
        end
    end

    final << less 
    final << greater
    final 
end

def merge(hash1, hash2)
    hash = {}
    hash1.each {|k, v| hash[k] = v}
    hash2.each {|k, v| hash[k] = v}
    hash
end

def star_vowel(word)
    vowels = "aeiouAEIOU"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char)
            new_word += "*"
        else
            new_word += char
        end
    end

    new_word
end

def censor(sentence, arr)
    words = sentence.split(" ")
    new_sen = []
    words.each do |word|
        if arr.include?(word.downcase)
           new_sen << star_vowel(word)
        else 
            new_sen << word
        end
    end

    new_sen.join(" ")
end

def power_of_two?(n)
    product = 1 

    while product < n
        product *= 2 
    end

    product == n
end
