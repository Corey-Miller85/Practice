def hipsterfy(word)
    vowels = "aeiou"
    i = word.length - 1 
    while i >= 0 
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -= 1    
    end
 word
end


def vowel_counts(arg)
    hash = Hash.new(0)
    vowels = "aeiou"
    arg.each_char  do |char| 
        if vowels.include?(char.downcase)
            hash[char.downcase] += 1
        end
    end
    return hash
end


# find index of letter
# replace letter with index + 1 
# return string


def caesar_cipher(string,num)
    alpha = ("a".."z").to_a 
    string_array = ""
    string.each_char do |char|
        if alpha.include?(char)
            old_index = alpha.index(char)
            new_index = old_index + num 
            string_array += alpha[new_index % 26]
        else
            string_array += char    
        end

    end
    return string_array
end

