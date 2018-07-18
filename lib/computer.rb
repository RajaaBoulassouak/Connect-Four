require './lib/game_board'
require './lib/user'

class Computer 
  
  attr_reader :computer_input, :user
  
  def initialize(user)
    @computer_input = computer_input
    @user = user
  end
  
  def computer_places_piece
    computers_column = @user.game_board.board.sample
    computers_column.reverse.find do |grid|
        if grid == "."
          grid.replace("O")
        end
      end
    computers_column
  end
  
  def update_computer_input(computers_column)
    @user.game_board.board.map! do |column|
      if column[0] == computers_column[0]
          column = computers_column
        else column = column
      end
    end 
  end
  
  def print_computer_board
    transposed_board =   @user.game_board.board.transpose
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end