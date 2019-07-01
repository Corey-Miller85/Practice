require_relative "code"

class Mastermind
    attr_accessor :secret_code
    
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code)
        puts "Number of exact matches: #{@secret_code.num_exact_matches(code)}"
        puts "Number of near matches: #{@secret_code.num_near_matches(code)}"
    end
    
    def ask_user_for_guess
        puts "Enter a code"
        user_input = gets.chomp
        user_guess = Code.from_string(user_input)
        puts print_matches(user_guess)
        user_guess == @secret_code
    end
end
