root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"

puts "Welcome to Tic Tac Toe"
Mike = TicTacToe::Player.new({color: "X", name: "Mike"})
Paloosh = TicTacToe::Player.new({color: "O", name: "Paloosh"})
players = [Mike, Paloosh]
TicTacToe::Game.new(players).play