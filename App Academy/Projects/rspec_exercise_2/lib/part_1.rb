def partition(array,num)
    new_array = []
    new_array_2 = []
    array.each do |ele|
        if ele >= num 
            new_array_2 << ele
        else
            new_array << ele
        end
    end
    return new_array, new_array_2
end


def merge(hash1,hash2)
    hash3 = hash1.merge(hash2)
    return hash3
end