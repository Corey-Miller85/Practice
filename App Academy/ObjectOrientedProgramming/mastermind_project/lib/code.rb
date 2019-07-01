class Code
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
end