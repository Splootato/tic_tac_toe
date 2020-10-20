root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"

puts "Welcome to Tic Tac Toe"
puts "Player 1 enter your name."
name1 = gets.chomp
puts "Player 2 enter your name."
name2 = gets.chomp

Player1 = TicTacToe::Player.new({color: "X", name: name1 })
Player2 = TicTacToe::Player.new({color: "O", name: name2 })
players = [Player1, Player2]
TicTacToe::Game.new(players).play