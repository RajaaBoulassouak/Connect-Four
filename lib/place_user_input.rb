require './lib/game_board'

class PlaceUserInput
  
  attr_accessor :user_input, :game_board
  
  def initialize(game_board)
    @user_input = user_input
    @game_board = game_board
  end 
  
  def place_your_piece
    puts "Please enter a letter from A - G to place your piece"
    @user_input = gets.chomp
  end
    # while @user_input = gets.chomp
    #   if @user_input == "A" || "B" || "C" || "D" || "E" || "F" || "G"
    #     puts @user_input
    #   else 
    #     puts "Invalid entry"
    #     @user_input = gets.chomp
    #   end 
    # end
  # end
    
  def identify_user_input_position(user_input)
    user_input_column = @game_board.original_board.find do |column| 
      column[0] == user_input.upcase
    end
    user_input_column
  end
  
  def place_user_input(user_input_column)
   reversed_column = user_input_column.reverse
   reversed_column.find do |grid|
     if grid == "."
       grid.replace("X")
     end
   end
   reversed_column
  end
  
  def update_user_input(reversed_column)
    new_column = reversed_column.reverse
    new_board = @game_board.original_board.map! do |column|
      if column[0] == new_column[0]
          column = new_column
        eqelse column
      end
    end
  end 
  
  def print_user_board(new_board)
    transposed_board = new_board.transpose
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ") 
    end 
  end
  
end