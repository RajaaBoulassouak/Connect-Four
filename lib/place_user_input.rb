require './lib/board'

class PlaceUserInput
  
  attr_accessor :user_input, :game_board
  
  def initialize(game_board)
    @user_input = user_input
    @game_board = game_board
  end 
  
  def place_your_piece
    puts "enter a letter from A - G to place your piece"
    @user_input = gets.chomp
  end
  
  def identify_user_input_position(user_inpu)
    user_input_column = @game_board.original_board.find do |column|
      column[0] == user_input.upcase
    end
    user_input_column
  end
  
end
  
  
#   def place_user_input(user_input_column)
#     updated_column = user_input_column.reverse.find do |grid| 
#       if grid == "."
#         grid.replace("X")
#       end
#     end
#     updated_column
#   end  
# 
# 
# end