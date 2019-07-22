#!/usr/bin/env ruby

VOWELS = ["a", "e", "i", "o", "u"]
PUNCT = [".", ",", "!", "\"", "?"]

def vowel_pos(word="")
   word.each_char do |char|
        if VOWELS.inclue?(char)
            return word.index(char)
        end
    end
end

def find_vowel_in_array(array=[])
    array.find_index { |char| VOWELS.include?(char) }
end

def pig_latin(word="")
    word.downcase!

    char_array = word.split('')
    first_vowel_position = find_vowel_in_array(char_array)
    if first_vowel_position > 0 
        front = char_array[0...first_vowel_position]
        main = char_array[first_vowel_position..-1]
    else
        front = []
        main = char_array
    end
    main.join + front.join("") + "ay"
end

def remove_punct(word)
    array = word.split("")
    if PUNCT.include?(word[-1,1])
        word.chop!
    end
    word
end

def sentence_to_pig_latin(sentence="")
    word_array = sentence.split(" ")
    new_word_array = word_array.map do |word|
        word_no_punctiation = remove_punct(word)
        pig_latin(word_no_punctiation)
    end
    new_word_array.join(" ").capitalize + "."
end

#prints to screen when game starts
def start_screen
    #line break = \n then break break
    puts "\n>> Pig Latin Translator <<\n\n"
    puts "Type phrases to translate after each prompt."
    puts "Type 'quit' to exit."
    puts 
end

def game_loop
    start_screen #prints start screen
    # loops game for input 
    loop do 
        print "Translate: "
        input = gets.chomp
        if input == 'quit'
            exit!
        else
            puts sentence_to_pig_latin(input) #string quotes added by gets
            puts
        end
    end
end

#launch translator
game_loop #runs the game loop