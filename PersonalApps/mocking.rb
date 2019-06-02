def mocking(string)
    
    new_string = ""
    string.each_char.with_index do |char,i|
            if i % 2 == 0
                char.downcase!
                new_string += char
            end
            if i % 2 !=0 
                char.upcase!
                new_string += char
            end
        end
    end
    return new_string
end

p mocking("all children are special")
p mocking("insert meme here")