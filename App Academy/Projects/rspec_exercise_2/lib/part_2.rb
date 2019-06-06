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
   subs = []
   (0...string.length).each do |start_str|
        (start_str...string.length).each do |end_str|
        subs << string[start_str..end_str]
    end
end
subs
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
    