require './lib/game_board'
require './lib/place_user_input'
require './lib/place_computer_input'

class ConnectFour
  
  def initialize 
    @game_board = GameBoard.new
    @place_users_input = PlaceUserInput.new(@game_board)
    @place_computer_input = PlaceComputerInput.new(@place_users_input)
  end


  def start_game
    puts "Welcome to Connect Four, you will need to enter a letter (A-G) to choose the."
    @game_board.print_board
  end

  def game_run
    # game = true
    until false do 
    user_run
    computer_run
    end 
    # break game == true
  end

  def user_run
    user_turn = @place_users_input.place_your_piece
    users_column = @place_users_input.identify_user_input_position(user_turn)
    place_users_input = @place_users_input.place_user_input(users_column)
    update_user_board = @place_users_input.update_user_input(place_users_input)
    print_users_board = @place_users_input.print_user_board
  end

  def computer_run
    computer_turn = @place_computer_input.computer_places_piece
    update_computer_board = @place_computer_input.update_computer_input(computer_turn)
    print_computers_board = @place_computer_input.print_computer_board
  end

end


start = ConnectFour.new
start.start_game
start.game_run
