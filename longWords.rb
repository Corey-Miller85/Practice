def select_long_words(words)
array = []
i = 0 
    while i < words.length
            if words[i].length > 4 
                array << words[i]
            end
            i += 1 
        end
    return array
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]