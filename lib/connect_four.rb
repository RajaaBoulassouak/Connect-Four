require './lib/game_board'
require './lib/user'
require './lib/computer'

class ConnectFour
  
  attr_accessor :board, :game_board
  
  def initialize
    @game_board = GameBoard.new
    @board = @game_board.board
  end

  def start_game
    puts "Welcome to Connect Four, you will need to enter a letter (A-G) to choose the column you want to place your piece in."
    @game_board.print_board
  end
  
  def run_game
    while board_empty  
      user_run
      print_new_board
      puts "\n"
      computer_run
      print_new_board
      if check_horizontal_win == true
        break
      end 
      if check_vertical_win == true 
        break
      end
      if board_empty == false
        break
      end
    end
  end

  def board_empty
    flattend_board = @board.flatten
    flattend_board.include?(".")
  end
  
  def check_horizontal_win
    if @board.join.include?("0000")
        puts "Sorry the computer won"
        true
      elsif @board.join.include?("XXXX")
        puts "Congratulations. You Won"
        true
    end
  end 
  
  def check_vertical_win 
    if @board.transpose.join.include?("0000")
        puts "Sorry the computer won"
        true
      elsif @board.transpose.join.include?("XXXX")
        puts "Congratulations. You Won"
        true
    end
  end 

  def user_run
    user = User.new(@board)
    users_turn = user.place_your_piece
    users_column = user.identify_user_input_position(users_turn)
    place_users_input = user.place_user_input(users_column)
    update_users_board = user.update_user_input(place_users_input)
    update_users_board = @board
  end

  def computer_run
    computer = Computer.new(@board)
    computers_turn = computer.computer_places_piece
    computers_turn = @board
  end
  
  def print_new_board
    @board.transpose.each do |column|
      puts column.map { |p| p }.join(" ")    
    end
  end
  
end