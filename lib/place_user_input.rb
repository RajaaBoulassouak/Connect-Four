require './lib/board'

class PlaceUserInput
  
  attr_accessor :user_input
  
  def initialize
    @user_input = user_input
  end 
  
  def place_your_piece
    puts "enter a letter from A - G to place your piece"
    @user_input = gets.chomp
  end
  
  def identify_user_input_position
    user_input_column = @original_board.find do |column|
      column[0] == user_input.upcase
    end
    user_input_column
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