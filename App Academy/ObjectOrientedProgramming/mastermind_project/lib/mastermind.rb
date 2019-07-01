require_relative "code"

class Mastermind
    attr_accessor :secret_code
    
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code)
        
    end

end
