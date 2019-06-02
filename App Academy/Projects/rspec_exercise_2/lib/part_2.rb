def palindrome?(string)
    new_string = ""
    i = 0
    while i < string.length
        new_string = string[i] + new_string
        i += 1 
    end

    if new_string == string
        return true
    else
        return false
    end
end

def substrings(string)
    hash = {}
    string.length.times do |j|
        (1..string.length - j).each do |x|
            key = string[j,x]
            
            hash[key] = true
        end
    end
    return hash.keys    
end

def palindrome_substrings(str)
    array = []
    array_2 = []
    subs = substrings(str)
    subs.each do |words|
       if palindrome?(words) && words.length > 1 
            array << words
       end
    end
    return array
end
