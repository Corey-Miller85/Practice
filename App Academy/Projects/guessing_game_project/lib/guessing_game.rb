class GuessingGame
    def initialize(num1, num2)
        @secret_num = rand(num1..num2)
        @num_attempts = 0
        @game_over = false
    end

    def num_attempts
        p @num_attempts
    end

    def game_over?
        @game_over
    end

    def check_num(number)
        @num_attempts += 1
        if number == @secret_num
            @game_over = true
            puts "you win"
        end
        if number > @secret_num
            puts "too big"
        end
        if number < @secret_num
            puts "too small"
        end
    end

    def ask_user
        p "enter a number"
        input = gets.chomp.to_i
        self.check_num(input)
    end

end
