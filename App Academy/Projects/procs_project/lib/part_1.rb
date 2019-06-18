require "byebug"
def my_map(arr,&prc)
    new_arr = []
    arr.each {|ele| new_arr << prc.call(ele)}
    return new_arr
end

def my_select( arr, &prc )
    new_arr = []
    arr.each do |ele|
        if prc.call(ele) == true 
            new_arr << ele
        end
    end
    return new_arr
end

def my_count(arr,&prc)
    count = 0
    arr.each do |ele| 
        if prc.call(ele) == true
            count += 1 
        end
    end
    return count
end

def my_any?(arr, &prc)
    arr.each do |ele| 
        if prc.call(ele) == true
            return true
        end
    end
    return false
end

def my_all?(arr, &prc)
    arr.each do |ele| 
        if prc.call(ele) == false
            return false
        end
    end
    true
end

def my_none?(arr,&prc)
    arr.each do |ele| 
        
        if prc.call(ele) == true
            return false
        end
    end
    return true
end

p my_none?([3, 5, 4, 7, 11]) { |n| n.even? } 
