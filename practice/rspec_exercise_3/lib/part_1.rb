def is_prime?(num)
    if num < 2 
        return false 
    end

    (2...num).each do |i|
        if num % i == 0
            return false 
        end
    end

    true
end

def nth_prime(n)
    i = 1 
    count = 0
    while count < n
        i += 1
        if is_prime?(i)
            count += 1
        end
    end

    i
end

def prime_range(min, max)
    arr = []
    (min..max).each do |num|
        if is_prime?(num)
            arr << num 
        end
    end

    arr
end

