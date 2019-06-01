def abbreviate_word(word)
    vowels = "aeiou"
    no_vowels = ""
    word.each_char do |char|
        if !vowels.include?(char)
           no_vowels += char
      end
    end
return no_vowels
end

