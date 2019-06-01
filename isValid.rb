# # A name is valid is if satisfies all of the following:
# # - contains at least a first name and last name, separated by spaces
# # - each part of the name should be capitalized
# #
# # Hint: use str.upcase or str.downcase
# # "a".upcase # => "A"

def is_valid_name(str)
    words = str.split(" ")
    words.each do |word|
    
        if words.length < 2  
            return false
        end

        if !is_capped(word)
            return false        
        end
    return true
    end
end

def is_capped(name)
    if (name[0] == name[0].upcase) && (name[1..-1] == name[1..-1].downcase)
        return true
    else
        return false
    end 
        
end


puts  is_valid_name("Kush Patel")       # => true
puts  is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts  is_valid_name("ROBERT DOWNEY JR") # => false