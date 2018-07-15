require './lib/board'
# require 'pp'

puts "I have generated Connect-Four for you, to place your piece, you will just need to enter the letter (A-G) of the column you want to place your piece at"

start = GameBoard.new
start.print_board