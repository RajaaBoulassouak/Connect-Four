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
    @board.transpose.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end
  