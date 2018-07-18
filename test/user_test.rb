require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/user'

class UserTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_instance_of User, user_turn
  end
  
  def test_attributes
    board = GameBoard.new
    user_turn = User.new(board)
  
    assert_equal board, user_turn.game_board
    #assert_equal user_input, user_turn.user_input
  end
  
  def test_user_input 
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_equal "B", user_turn.place_your_piece
  end
  
  def test_it_identifies_user_input_position
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_equal ["B", ".", ".", ".", ".", ".", "."], user_turn.identify_user_input_position("B")
  end
  
  def test_it_places_user_input
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_equal ["X", ".", ".", ".", ".", ".", "B"],
    user_turn.place_user_input(["B", ".", ".", ".", ".", ".", "."])
  end
  
  def test_it_updates_user_input
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_equal [["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]], user_turn.update_user_input(["X", ".", ".", ".", ".", ".", "B"])
  end
  
  def test_it_prints_updated_board
    board = GameBoard.new
    user_turn = User.new(board)
    
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".",
    ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", "X", ".", ".", ".", ".", "."]], user_turn.print_user_board([["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]])
  end
  
end