def my_reject(arr, &prc)
    rejected = []
    arr.each do |ele|
        if !prc.call(ele)
            rejected << ele
        end
    end

    rejected
end

def my_one?(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end
        if count == 1 
            return true
        end

    false
end

def hash_select(hash, &prc)
    new_hash = {}
    hash.each do |k, v|
        if prc.call(k,v)
            new_hash[k] = v
        end
    end

    new_hash
end

def xor_select(arr, prc1, prc2)
    newarr = []
    arr.each do |ele|
        if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele))
            newarr << ele
        end
    end

    newarr
end

def proc_count(n, arr)
    count = 0
    arr.each do |prc|
        if prc.call(n)
            count += 1
        end
    end
    
    count
end