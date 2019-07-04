require_relative "board"
require_relative "player"


class Battleship
    attr_reader :board, :player
    def initialize(n)
        @player = Player.new
        Board.new(n)
        @board = Board.new(n)
        @remaining_misses = @board.size / 2.0
    end

    def start_game
        board.place_random_ships
        puts board.num_ships 
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            puts "you lose"
            return true
        else 
            return false
        end
    end

    def win?
        @board.num_ships
        if @board.num_ships == 0 
            puts "you win"
            return true
        else
            return false
        end
    end

    def game_over?
        return true if win? == true || lose? == true
        return false if win? == false || lose? == false
    end

    def turn

        input = player.get_move
        if @board.attack(input) == false
            @remaining_misses -= 1 
        end
        @board.print
        puts "remaining misses = #{@remaining_misses}"

    end

end
