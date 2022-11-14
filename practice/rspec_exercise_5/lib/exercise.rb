def zip(*array)
    newarr = Array.new(array[0].length) {[]}
    (0...array[0].length).each do |i|
        array.each do |arr| 
            newarr[i] << arr[i]
        end
    end

    newarr
end

array_1 = ['a', 'b', 'c'] 
array_2 = [1, 2, 3] 
array_3 = ['w', 'x', 'y'] 

def prizz_proc(arr, prc1, prc2)
    newarr = []
    arr.each do |ele|
        if (prc1.call(ele) && !prc2.call(ele)) || (!prc1.call(ele) && prc2.call(ele))
            newarr << ele
        end
    end

    newarr
end

def

end