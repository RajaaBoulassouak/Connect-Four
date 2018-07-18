require "minitest/pride"
require "minitest/autorun"
require "./lib/game_board"
require "./lib/place_user_input"

class PlaceUserInputTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_instance_of PlaceUserInput, turn
  end
  
  def test_attribute
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
  
    assert_equal board, turn.game_board
  end
  
  def test_user_input 
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_equal "B", turn.place_your_piece
  end
  
  def test_it_identifies_user_input_position
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_equal ["B", ".", ".", ".", ".", ".", "."], turn.identify_user_input_position("B")
  end
  
  def test_it_places_user_input
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_equal ["X", ".", ".", ".", ".", ".", "B"],
    turn.place_user_input(["B", ".", ".", ".", ".", ".", "."])
  end
  
  def test_it_updates_user_input
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_equal [["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]], turn.update_user_input(["X", ".", ".", ".", ".", ".", "B"])
  end
  
  def test_it_prints_updated_board
    board = GameBoard.new
    turn = PlaceUserInput.new(board)
    
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".",
    ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", "X", ".", ".", ".", ".", "."]], turn.print_user_board([["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]])
  end
  
end