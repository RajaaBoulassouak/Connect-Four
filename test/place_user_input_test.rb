require "minitest/pride"
require "minitest/autorun"
require "./lib/game_board"
require "./lib/place_user_input"

class PlaceUserInputTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    turn = PlaceUserInput.new
    
    assert_instance_of PlaceUserInput, turn
  end
  
end