require 'minitest/pride'
require 'minitest/autorun'
require './lib/game_board'
require './lib/user'
require './lib/computer'
require './lib/connect_four'

class ConnectFourTest < Minitest::Test 
  
  def test_it_exists 
    play = ConnectFour.new
    
    assert_instance_of ConnectFour, play
  end
  
  def test_attributes
    skip
    play = ConnectFour.new
    board = GameBoard.new
    user_turn = User.new(board)
    comp_turn = Computer.new(user_turn)
  
    assert_equal board, play.game_board
    assert_equal user_turn, play.user
    assert_equal comp_turn, play.computer
  end
  
  def test_game_starts
    
    play = ConnectFour.new
    board = GameBoard.new
    
    assert_equal ("Welcome to Connect Four, you will need to enter a letter (A-G) to choose the column you want to place your piece in." [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]]), board.start_game
  end
  
  
end

