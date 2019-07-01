class Code
##@pegs is going to  = the answer
  
  attr_reader :pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    #all chars of the array are in ::POSSIBLE_PEGS
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end
  
  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end


  def initialize(chars)
    if Code.valid_pegs?(chars) #are pegs valid?
      @pegs = chars.map(&:upcase) # make pegs array and upcase
    else
      raise "Invalid pegs" #if the pegs are not all valid.
    end
  end

  def [](index)
    @pegs[index]
  end
  
  def length
    @pegs.length
  end



  # def num_exact_matches(code)
  #   i = 0
  #   counter = 0
  #   while i < @pegs.length 
  #     if code[i] == self.pegs[i]
  #       counter += 1 
  #     end
  #     i += 1 
  #   end
  #   return counter
  # end

  def num_exact_matches(guess)
    counter = 0
    (0...guess.length).each do |i|
      counter += 1 if guess[i] == self.pegs[i] 
    end
    counter
  end

  def num_near_matches(guess)
    counter = 0 
    (0...guess.length).each do |i|
      if @pegs.include?(guess[i]) && self.pegs[i] != guess[i]
        counter += 1 
      end
    end
    counter
  end
    
  def ==(guess)
    self.pegs == guess.pegs
  end

  end

end
