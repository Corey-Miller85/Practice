def abbreviate_sentence(sent)
    words = sent.split " "
    new_words = []
    words.each do |word|
        if word.length > 4 
            abbWord = abbWord(word)
            new_words << abbWord
        else
            new_words << word 
        end
    end
    new_sent = new_words.join(" ")
end

def abbWord(word)
    vowels = "aeiou"
    no_vowels = ""
    word.each_char do |char|
        if !vowels.include?(char)
            no_vowels << char
        end
    end
    return no_vowels
end


puts abbreviate_sentence("Your mother is a hampster and your father smells of elderberries.")

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"