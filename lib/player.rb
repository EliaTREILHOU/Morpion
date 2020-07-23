class Player
  attr_reader :name, :symbol
  
  def initialize(name, symbol,nb_players = 0, nb_win = 0, nb_lose = 0)
    @name = name #nom
    @symbol = symbol #Symbole X ou O
    @nb_win = nb_win #nombre de victoire
    @nb_lose = nb_lose #nombre de défaite
    @nb_players = nb_players #nombre de joueur
  end
