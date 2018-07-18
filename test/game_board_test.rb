require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'

class GameBoardTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    
    assert_instance_of GameBoard, board
  end
  
  def test_it_prints_board
    # skip
    board = GameBoard.new
  
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], board.print_board
  end
  
  
end 