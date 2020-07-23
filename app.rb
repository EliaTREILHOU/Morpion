require 'bundler'
Bundler.require

require_relative 'lib/board.rb'
require_relative 'lib/boardcase.rb'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

puts "Bienvenue dans mon jeu du Morpion"

puts "Entrez un nom pour le joueur 1 : "
print "> "
name_player1 = gets.chomp
puts "Entrez un nom pour le joueur 2 : "
print "> "
name_player2 = gets.chomp
system "clear"

my_game = Game.new(name_player1, name_player2)

my_game.new_board_game
my_game.move_player1
my_game.move_player2
my_game.execute_move_player1
my_game.execute_move_player2
