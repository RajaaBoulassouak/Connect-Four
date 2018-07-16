# require './lib/place_user_input'

class GameBoard 
  
  attr_reader :original_board 
  
  def initialize
    @original_board = [
              ["A", ".", ".", ".", ".", ".", "."], 
              ["B", ".", ".", ".", ".", ".", "."], 
              ["C", ".", ".", ".", ".", ".", "."], 
              ["D", ".", ".", ".", ".", ".", "."], 
              ["E", ".", ".", ".", ".", ".", "."],
              ["F", ".", ".", ".", ".", ".", "."],
              ["G", ".", ".", ".", ".", ".", "."]
            ]
  end
  
  def print_board
    transposed_board = @original_board.transpose
    
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ")
          
    end
  end
end
  
  # def update_board
  #   new_column = place_user_input.reverse
  #   updated_board = @original_board.map do |column|
  #     if column[0] == new_column[0]
  #       column = new_column 
  #     end
  #   end
  #   updated_board
  # end 

  # def show_updated_board
  #   printing_board = updated_board.each do |column|
  #     puts column.map { |p| p }.join(" ")
  #     end
  #   puts "enter 'ok' to continue" 
  #   @user_input = gets.chomp         
  # end  

    # until transposed_board.flatten.count == 0 do 
      
      # board << transposed_board[0].join
      # board << "\n"
      # board << transposed_board[1].join
      # board << "\n"
      # board << transposed_board[2].join
      # board << "\n"
      # board << transposed_board[3].join
      # board << "\n"
      # board << transposed_board[4].join
      # board << "\n"
      # board << transposed_board[5].join
      # board << "\n"
      # board << transposed_board[6].join
#       # board << "\n\n"
#     end

# # {
          # letters: ["A", "B", "C", "D", "E", "F", "G"],
          # line_1: [".", ".", ".", ".", ".", ".", "."],
          # line_2: [".", ".", ".", ".", ".", ".", "."],
          # line_3: [".", ".", ".", ".", ".", ".", "."],
          # line_4: [".", ".", ".", ".", ".", ".", "."],
          # line_5: [".", ".", ".", ".", ".", ".", "."],
          # # line_6: [".", ".", ".", ".", ".", ".", "."]

# start = GameBoard.new
# start.print_board