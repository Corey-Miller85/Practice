require "byebug"

def sum_to(n)
    return 1 if n > 0 && n == 1 
    n + sum_to(n - 1)
end

def add_numbers(nums_array)
    
    return nums_array[0] if nums_array.length == 1
    nums_array[0] + add_numbers(nums_array[1..-1])
end

def gamma_fnc(num)
    return nil if num <= 0 
    return 1 if num == 1  
    (num - 1) *  gamma_fnc(num - 1)
end


def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if flavors.last == favorite
    
    ice_cream_shop(flavors[0...-1],favorite)

end

def reverse(string)
return string if string.length <= 1 
string[-1] + reverse(string[0..-2])
end