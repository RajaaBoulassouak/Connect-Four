require './lib/board'
require './lib/place_user_input'

class PlaceComputerInput 
  
  attr_reader :computer_input, :place_user_input
  
  def initialize(place_user_input)
    @computer_input = computer_input
    @place_user_input = place_user_input
  end
  
  def computer_places_piece
    computers_column = @place_user_input.game_board.original_board.sample
    computers_column.reverse.find do |grid|
        if grid == "."
          grid.replace("O")
        end
      end
    computers_column
  end
  
  def update_computer_input(computers_column)
    @place_user_input.game_board.original_board.map! do |column|
      if column[0] == computers_column[0]
          column = computers_column
        else column = column
      end
    end 
  end
  
  def print_computer_board
    transposed_board =   @place_user_input.game_board.original_board.transpose
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end