require './lib/game_board'

class User
  
  attr_accessor :user_input, :board
  
  def initialize(game_board)
    @user_input = user_input
    @board = game_board
  end 
  
  def place_your_piece
    puts "Please enter a letter from A - G to place your piece"
    @user_input = gets.chomp
  end
  
  def identify_user_input_position(user_input)
    user_input_column = @board.find do |column| 
      column[0] == user_input.upcase
    end
    user_input_column
  end
  
  def place_user_input(user_input_column)
  user_input_column.reverse.find do |grid|
     if grid == "."
       grid.replace("X")
     end
   end
   user_input_column
  end
  
  def update_user_input(user_input_column) 
    @board.map! do |column|
      if column[0] == user_input_column[0]
          column = user_input_column
        else
          column     
      end
    end
  end 
  
end