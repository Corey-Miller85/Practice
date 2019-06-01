# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def is_valid_name(str)
parts = str.split(" ")
    parts.each do |word|

        if parts.length < 2
            return false
        end

        if !is_caps(word)
            return false    

        end
        return true
    end

end

def is_caps(word)
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
        return true
    else
        return false
    end
    print word
end

# puts is_caps("Steve Miller")

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false