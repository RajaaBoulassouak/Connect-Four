require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/user'
require './lib/computer'

class ComputerTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    comp_turn = Computer.new(board)
    
    assert_instance_of Computer, comp_turn
  end
  
  def test_attributes
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(board)
  
    assert_equal board, comp_turn.board
  end
  
  def test_computer_places_piece
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(board.board)
    comp_turn.computer_places_piece
    expected = true 
    actual = comp_turn.board.include?("O")
    assert expected, actual
  end
    
end