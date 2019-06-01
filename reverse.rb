def reverse_words(sent)
    new_words = []
    words = sent.split(" ")
    words.each {|word| new_words <<  word.reverse!}

   new_sent = new_words.join(" ")
    return new_sent


end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'