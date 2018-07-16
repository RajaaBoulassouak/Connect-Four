require './lib/board'
require './lib/place_user_input'
require './lib/place_computer_input'

puts "I have generated Connect-Four for you, to place your piece, you will just need to enter the letter (A-G) of the column you want to place your piece at"

start = GameBoard.new
start.print_board

user_turn = PlaceUserInput.new(start)

user_plays = user_turn.place_your_piece

users_column = user_turn.identify_user_input_position(user_plays)

place_users_input = user_turn.place_user_input(users_column)

update_user_board = user_turn.update_user_input(place_users_input)

print_users_board = user_turn.print_user_board

computer_turn = PlaceComputerInput.new(user_turn)

computer_plays = computer_turn.computer_places_piece

update_computer_board = computer_turn.update_computer_input(computer_plays)

print_computers_board = computer_turn.print_computer_board

