require_relative './boardcase.rb'

class Board
    attr_accessor :row1, :row2, :row3, :col1, :col2, :col3, :diago1, :diago2 #lignes,colonnes, diagonales

    def initialize #mise en place du plateau
        #ligne
        @row1 = [a1 = ' ', a2 = ' ', a3 = ' ']
        @row2 = [b1 = ' ', b2 = ' ', b3 = ' ']
        @row3 = [c1 = ' ', c2 = ' ', c3 = ' ']
        #collone
        @col1 = [a1, b1, c1]
        @col2 = [a2, b2, c2]
        @col3 = [a3, b3, c3]
        #diagonales
        @diago1 = [a1, b2, c3]
        @diago2 = [a3, b2, c1]
    end

    def generate_board #interface ligne et colonne
        puts " "
        puts  " #{a1 = " " } | #{a2 = " " } | #{a3 = " "} "
        puts separateur = "-----------"
        puts " #{b1 = " "} | #{b2 = " "} | #{b3 = " "} "
        puts separateur
        puts " #{c1 = " "} | #{c2 = " "} | #{c3 = " "} "
    end
end
