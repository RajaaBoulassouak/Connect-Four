require './lib/board'
require './lib/place_user_input'

puts "I have generated Connect-Four for you, to place your piece, you will just need to enter the letter (A-G) of the column you want to place your piece at"

start = GameBoard.new
start.print_board
turn = PlaceUserInput.new(start)
user_plays = turn.place_your_piece
played_column = turn.identify_user_input_position(user_plays)
place_input = turn.place_user_input(played_column)
updating_board = turn.update_board(place_input)
print_new_board = turn.print_updated_board
