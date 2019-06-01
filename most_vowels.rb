def most_vowels(sentence)
    new_sent = sentence.split
    new_arr = []
    vowels = "aeiou"
    new_sent.each do |word|
        i = 0

        word.each_char do |char|
            if vowels.include?(char)
                i += 1 
            end
        end
        new_arr << [word, i]

    end
    return sorted = new_arr.sort
end



print most_vowels("what a wonderful life boooobs") #=> "wonderful"