require './lib/game_board'
require './lib/place_user_input'
require './lib/place_computer_input'

class ConnectFour
  
  attr_accessor :game_board, :place_users_input, :place_computer_input
  
  def initialize 
    @game_board = GameBoard.new
    @place_users_input = PlaceUserInput.new(@game_board)
    @place_computer_input = PlaceComputerInput.new(@place_users_input)
  end

  def start_game
    puts "Welcome to Connect Four, you will need to enter a letter (A-G) to choose the column you want to place your piece in."
    @game_board.print_board
  end

  def game_run
    while board_full  
      user_run
      puts "\n"
      computer_run
    end
    puts "board is fulll is"
  end
  
  def board_full
    board = @place_computer_input.place_user_input.game_board.original_board.flatten
    board.include?(".")
  end
  
  def user_run
    user_turn = @place_users_input.place_your_piece
    users_column = @place_users_input.identify_user_input_position(user_turn)
    place_users_input = @place_users_input.place_user_input(users_column)
    update_user_board = @place_users_input.update_user_input(place_users_input)
    print_users_board = @place_users_input.print_user_board(update_user_board)
  end

  def computer_run
    computer_turn = @place_computer_input.computer_places_piece
    update_computer_board = @place_computer_input.update_computer_input(computer_turn)
    print_computers_board = @place_computer_input.print_computer_board
  end
  
end

# start = ConnectFour.new
# start.start_game
# start.game_run
