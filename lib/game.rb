require_relative './board'
require_relative './boardcase'

class Game
  attr_accessor :name_player1, :name_player2, :players_array, :choose_move_player1, :choose_move_player2, :valid_moves, :current_board

  def initialize(name_player1, name_player2)
    @name_player1 = name_player1
    @name_player2 = name_player2
    @players_array = [player_1 = Player.new(name_player1), player_2 = Player.new(name_player2)]
    player_1.sign = "X"
    player_2.sign = "O"
    @valid_moves = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    @current_board = Board.new
    @current_board = @current_board.board
  end

  def new_board_game
    start_board = Board.new
    start_board.generate_empty_board
  end

  def move_player1
    loop do
      puts "#{@players_array[0].name}, choisissez la cellule à jouer : (A1/B2/C3...)"
      print "> "
      @choose_move_player1 = gets.chomp.downcase
      if @valid_moves.include?(@choose_move_player1) == true
        break
      end
      puts "Choix invalide, réessayer."
    end
    @valid_moves.delete choose_move_player1
  end

  def move_player2
    loop do
      puts "#{@players_array[1].name}, choisissez la cellule à jouer: (A1/B2/C3...)"
      print "> "
      @choose_move_player2 = gets.chomp.downcase
      if @valid_moves.include?(@choose_move_player2) == true
        break
      end
      puts "Choix invalide, réessayer."
    end
    @valid_moves.delete choose_move_player2
  end

  def execute_move_player1
    @current_board.each do |symbol,value|
      symbol.to_s
      if @choose_move_player1 == symbol
        value = players_array[0].sign
      end
    end
  end

  def execute_move_player2
    @current_board.each do |symbol,value|
      symbol.to_s
      if @choose_move_player2 == symbol
        value = players_array[1].sign
      end
    end
  end
end
