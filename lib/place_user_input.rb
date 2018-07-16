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
    if gets.chomp != ("a".."g" || "A".."G")
      puts "enter a letter from A - G tp place your piece"
    end
  end
  
  def identify_user_input_position(user_input)
    user_input_column = @game_board.original_board.find do |column|
      column[0] == user_input.upcase
    end
    user_input_column
  end
  
  def place_user_input(user_input_column)
    reversed_column = user_input_column.reverse
    updated_column =  if reversed_column[0] == "."
                         reversed_column[0] = "X"
                        elsif reversed_column[1] == "."
                              reversed_column[1] = "X"
                        elsif reversed_column[2] == "."
                              reversed_column[2] = "X"
                        elsif reversed_column[3] == "."
                              reversed_column[3] = "X"
                        elsif reversed_column[4] == "."
                              reversed_column[4] = "X"
                        elsif reversed_column[5] == "."
                              reversed_column[5] = "X"
                        elsif reversed_column[6] == "."
                              reversed_column[6] = "X" 
                      end 
          reversed_column
  end 
  
  def update_board(reversed_column)
    new_column = reversed_column.reverse
    @game_board.original_board.map! do |column|
      if column[0] == new_column[0]
        column = new_column
      else column = column
      end
    end
  end 
  
  def print_updated_board
    transposed_board = @game_board.original_board.transpose
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end