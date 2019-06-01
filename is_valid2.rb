def is_valid_name(name)
    parts = name.split(" ")

    if parts.length < 2
        return false
    end
    
        parts.each do |str|
            if is_cap(str) == false
                return false
            end
        end
    return true
end

def is_cap(str)
   if str[0] == str[0].upcase && str[1..-1] == str[1..-1].downcase
    return true
   else 
    return false
   end
end







puts  is_valid_name("Kush Patel")       # => true
puts  is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts  is_valid_name("ROBERT DOWNEY JR") # => false