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
  