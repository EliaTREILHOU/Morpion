class Player

  attr_reader :name, :symbol
  def initialize(name, symbol,nb_players = 0, nb_win = 0, nb_lose = 0)
    @name = name #nom
    @symbol = symbol #Symbole X ou O
    @nb_win = nb_win #nombre de victoire
    @nb_lose = nb_lose #nombre de défaite
    @nb_players = nb_players #nombre de joueur
  end
  
  # Calcul des stats

  def win #victoire
    @nb_win += 1
    add_players
  end

  def lose #défaite
    @nb_lose += 1
    add_players
  end

  def add_players 
    @nb_players += 1
  end

  # Montre les stats
  def show_states 
    puts"First name" => @name
    puts "Number of game played" => @nb_players
    puts "Wins" => @nb_win
    puts "Loss" => @nb_lose
  end
end
