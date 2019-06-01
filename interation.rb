def backwards(word)
    str = ""
    i = 0 
    while i < word.length
        char = word[i]
        str = char + str
        i += 1 
    end
    
    if str == word
        puts "is true"
    else
         puts "is not true"
    end

    return str
end


puts backwards("steve")
puts backwards("racecar")