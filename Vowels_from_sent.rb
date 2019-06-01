def killVowels(sent)
    vowels = "aeiou"
    new_sent= ""
    sent.each_char do |char|
        if !vowels.include?(char)
        new_sent = new_sent + char
        end
    end
    return new_sent
end


puts killVowels("your mother is a whore")