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
  
  def test_attribute
    play = ConnectFour.new
    board = GameBoard.new

    assert_equal board.board, play.board
  end

  def test_game_starts
    play = ConnectFour.new
    board = GameBoard.new

    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], play.start_game
  end
  
  def test_user_runs
    play = ConnectFour.new
    board = GameBoard.new
    user = User.new(board)
    computer = Computer.new(board)
    
    assert_equal [["A", ".", ".", ".", ".", ".", "."], ["B", ".", ".", ".", ".", ".", "X"], ["C", ".", ".", ".", ".", ".", "."], ["D", ".", ".", ".", ".", ".", "."], ["E", ".", ".", ".", ".", ".", "."], ["F", ".", ".", ".", ".", ".", "."], ["G", ".", ".", ".", ".", ".", "."]], play.user_run
  end
  
  def test_it_prints_board
    play = ConnectFour.new
    board = GameBoard.new
    user = User.new(board)
    computer = Computer.new(board)
    
    assert_equal [["A", "B", "C", "D", "E", "F", "G"], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."], [".", ".", ".", ".", ".", ".", "."]], play.print_new_board
  end

end
