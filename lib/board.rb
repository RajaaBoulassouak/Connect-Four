class GameBoard 
  
  attr_accessor :original_board 
  
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
    
    transposed_board.each do |array|
      puts array.map { |p| p }.join(" ")
          
    end
  end
  
  
end
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