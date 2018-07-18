require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/user'
require './lib/computer'

class ComputerTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
    
    assert_instance_of Computer, comp_turn
  end
  
  def test_attributes
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
    
    assert_equal user_turn, comp_turn.user
    #assert_equal user_turn, comp_turn.user
  end
  
  def test_computer_places_piece
    skip
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
    
    assert_equal ??, comp_turn.computer_places_piece
  end
  
  def test_it_updates_user_input
    skip
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
  
    assert_equal [["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]], comp_turn.update_computer_input(["X", ".", ".", ".", ".", ".", "B"])
  end

  def test_it_prints_updated_board
    skip
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
    
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".",
    ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], comp_turn.print_computer_board
  end

end