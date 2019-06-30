class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end
    
  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
    
  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    array = []
    @secret_word.each_char.with_index do |ele, i|
      if char == ele
        array << i
      end
    end
    array
  end

  def fill_indices(char, array)
    array.each do |num|
      @guess_word[num] = char
    end
  end

  def try_guess(char)
    
    if self.get_matching_indices(char) == []
      @remaining_incorrect_guesses -= 1
    end
    self.fill_indices(char, self.get_matching_indices(char))
    if self.already_attempted?(char) == true
      print "that has already been attempted"
      return false
    else 
      @attempted_chars << char
      return true
    end 
  end

  def ask_user_for_guess
    print "Enter a char:"
    input = gets.chomp
    self.try_guess(input)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
     if @remaining_incorrect_guesses > 0 
      return false
    end
    if @remaining_incorrect_guesses == 0 
      puts "LOSE"
      return true
    end
  end

  def game_over?
    if self.win? == true
      puts @secret_word
      return true
    end
    if self.lose? == true
       puts @secret_word
      return true
    end
    return false
  end
end
