require './lib/game_board'
require './lib/user'
require './lib/computer'

class ConnectFour
  
  attr_accessor :game_board, :user, :computer
  
  def initialize 
    @game_board = GameBoard.new
    @user = User.new(@game_board)
    @computer = Computer.new(@user)
  end

  def start_game
    puts "Welcome to Connect Four, you will need to enter a letter (A-G) to choose the column you want to place your piece in."
    @game_board.print_board
  end

  def run_game
    while board_full  
      user_run
      puts "\n"
      computer_run
    end
    puts "board is fulll is"
  end
  
  def board_full
    flattend_board = @computer.user.game_board.board.flatten
    flattend_board.include?(".")
  end
  
  # def check_horizontal_win
    
    
  
  def user_run
    users_turn = @user.place_your_piece
    users_column = @user.identify_user_input_position(users_turn)
    place_users_input = @user.place_user_input(users_column)
    update_users_board = @user.update_user_input(place_users_input)
    print_users_board = @user.print_user_board(update_users_board)
  end

  def computer_run
    computers_turn = @computer.computer_places_piece
    update_computers_board = @computer.update_computer_input(computers_turn)
    print_computers_board = @computer.print_computer_board
  end
  
end

start = ConnectFour.new
start.start_game
start.run_game
