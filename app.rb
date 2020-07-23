require "bundler"
Bundler.require
require_relative '/lib/app/broad'
require_relative '/lib/app/braodcase'
require_relative '/lib/app/game'
require_relative '/lib/app/player'

class morpion
  def perform
  player
  boardcase
  board
  game
end
end

morpion.new.perform
