require "byebug"    #

def all_words_capitalized?(array)
    array.all? {|word| word.capitalize == word}
end

def no_valid_url?(array)
    accepted = [".com",".net",".io",".org"]
    array.none? do |word|
        
        accepted.any? {|ending| word.end_with?(ending)}
    end
end


