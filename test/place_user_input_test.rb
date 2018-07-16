require "minitest/pride"
require "minitest/autorun"
require "./lib/board"
require "./lib/place_piece"

class PlaceUserInputTest < Minitest::Test 
  
  def test_it_exists 
    board = GameBoard.new
    turn = PlaceUserInput.new
    
    assert_instance_of PlaceUserInput, turn
  end
  
end