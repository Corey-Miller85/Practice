# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.



def is_prime?(num)
   return false if num < 2 
    (2...num).none? {|ele| num % ele == 0}
end

def largest_prime_factor(num)
    num.downto(2) do |factor| 
        if num % factor == 0 && is_prime?(factor)
            return factor
        end
    end
end




def unique_chars?(string)
    already_seen = []
    string.each_char do |char| 
        if already_seen.include?(char)
            return false
        end
        already_seen << char
    end
    return true
end

def dupe_indices(array)
    hash = Hash.new { |h, k| h[k] = [] }
    array.each_with_index do |ele, i| 
        hash[ele] << i
    end
    hash.select {|k, v| v.length > 1 }


end

def counter(array)
    count = Hash.new(0)
    array.each {|ele| count[ele] += 1}
    return count
end

def ana_array(arr1, arr2)
   counter1 = counter(arr1)
   counter2 = counter(arr2)
   counter1 == counter2 
end