def partition(array,num)
    new_array = []
    new_array_2 = []
    array.each do |ele|
        if ele >= num 
            new_array_2 << ele
        else
            new_array << ele
        end
    end
    return new_array, new_array_2
end


def merge(hash1,hash2)
    hash3 = {}
    hash1.each { |k,v| hash3[k] = v}
    hash2.each { |k,v| hash3[k] = v}
    hash3
end

def censor(sentence,curse)
    new_sentence = []
    words = sentence.split(" ")
    words.map do |word|
        if curse.include?(word.downcase)
            new_sentence << star(word)
        else
            new_sentence << word
        end
    end
    return new_sentence.join(" ")
end

def star(word)
new_word = ""
    vowels = "aeiou"
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word += "*"
        else
            new_word += char
        end
    end
    return new_word
end

def power_of_two?

end