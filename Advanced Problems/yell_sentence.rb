
# def yell_sentence(sent)
#   words = sent.split(" ")
#   new_words = words.map {|word| word.upcase + "!"}
#   return new_words.join(" ")

# end

# puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


def yell_sentence(sent)
  new_sent = sent.upcase + "!"
  return new_sent
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"