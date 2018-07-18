require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/place_user_input'
require './lib/place_computer_input'

class PlaceUInputTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    user_turn = PlaceUserInput.new(board)
    comp_turn = PlaceComputerInput.new(user_turn)
    
    assert_instance_of PlaceComputerInput, comp_turn
  end
  
  def test_attributes
    board = GameBoard.new
    user_turn = PlaceComputerInput.new(board)
    comp_turn = PlaceComputerInput.new(user_turn)
    
    assert_equal user_turn, comp_turn.place_user_input
  end
  
  def test_computer_places_piece
    skip
    board = GameBoard.new
    turn = PlaceComputerInput.new(board)
    comp_turn = PlaceComputerInput.new(turn)
    
    assert_equal ??, comp_turn.computer_places_piece
  end
  
  def test_it_updates_user_input
    skip
    board = GameBoard.new
    user_turn = PlaceComputerInput.new(board)
    comp_turn = PlaceComputerInput.new(user_turn)
  
    assert_equal [["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]], comp_turn.update_computer_input(["X", ".", ".", ".", ".", ".", "B"])
  end

  def test_it_prints_updated_board
    skip
    board = GameBoard.new
    user_turn = PlaceComputerInput.new(board)
    comp_turn = PlaceComputerInput.new(user_turn)
    
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".",
    ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], comp_turn.print_computer_board
  end

end