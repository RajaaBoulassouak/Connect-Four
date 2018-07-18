class GameBoard 
  
  attr_reader :board 
  
  def initialize
    @board = [
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
    transposed_board = @board.transpose
    transposed_board.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end
  