require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/place_user_input'
require './lib/place_computer_input'
require './lib/connect_four.rb'

class ConnectFourTest < Minitest::Test 
  
  def test_it_exists 
    play = ConnectFour.new
    
    assert_instance_of ConnectFour, play
  end
  
  def test_attributes
    skip
    play = ConnectFour.new
    board = GameBoard.new
    user_turn = PlaceUserInput.new(board)
    comp_turn = PlaceComputerInput.new(user_turn)
  
    assert_equal board, play.game_board
    assert_equal user_turn, play.place_user_input
    assert_equal comp_turn, play.place_computer_input
  end
  
  def test_game_starts
    play = ConnectFour.new
    board = GameBoard.new
    
    assert_equal assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], board.print_board
  end
  
  
end

