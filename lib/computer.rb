require './lib/game_board'
require './lib/user'

class Computer 
  
  attr_reader :board
  
  def initialize(game_board)
    @board = game_board
  end
  
  def computer_places_piece
    @board.sample.reverse.find do |grid|
        if grid == "."
          grid.replace("O")
        end
      end
    @board

  end

end