class Board

  attr_reader :cases, :nb_coup_jouer, :victory
  def initialize
    # Ici on initialise un plateau puis on crée les boardcases
    a1=BoardCase.new(1) 
    a2=BoardCase.new(2)
    a3=BoardCase.new(3) 
    b1=BoardCase.new(4) 
    b2=BoardCase.new(5) 
    b3=BoardCase.new(6) 
    c1=BoardCase.new(7) 
    c2=BoardCase.new(8) 
    c3=BoardCase.new(9)  
    
    @cases = [a1, a2, a3, b1, b2, b3, c1, c2, c3] # On stocke les boardcases
    @nb_coup_jouer = 0
    @victory = false
  end

  def change_value(bcase, value) # On applique le changement à la case
    begin
      @cases[bcase].change_content(value)
      add_coup
    rescue
      ending_play #fin du jeu
    end
  end

  def ending_play
    @victory = true
  end

  def add_coup
    @nb_coup_jouer += 1
  end

  def verif_alignement_points #Verifie la victoire en point du joueur
    if verif_lines or verif_columns or verif_diagonales
      true
    else
      false
    end
  end

  def verif_lines # Vérifie ligne par ligne
    if @cases[0].content != " " and [@cases[0].content, @cases[1].content, @cases[2].content] == [@cases[0].content, @cases[0].content, @cases[0].content]
      color_win(@cases[0], @cases[1], @cases[2]) # Si c'est bon on color en vert les cases
      return true
    elsif @cases[3].content != " " and [@cases[3].content, @cases[4].content, @cases[5].content] == [@cases[3].content, @cases[3].content, @cases[3].content]
      color_win(@cases[3], @cases[4], @cases[5])
      return true
    elsif @cases[6].content != " " and [@cases[6].content, @cases[7].content, @cases[8].content] == [@cases[6].content, @cases[6].content, @cases[6].content]
      color_win(@cases[6], @cases[7], @cases[8])
      return true
    else
      return false 
    end
  end

  def verif_columns
    if @cases[0].content != " " and [@cases[0].content, @cases[3].content, @cases[6].content] == [@cases[0].content, @cases[0].content, @cases[0].content]
      color_win(@cases[0], @cases[3], @cases[6])
      return true
    elsif @cases[1].content != " " and [@cases[1].content, @cases[4].content, @cases[7].content] == [@cases[1].content, @cases[1].content, @cases[1].content]
      color_win(@cases[1], @cases[4], @cases[7])
      return true
    elsif @cases[2].content != " " and [@cases[2].content, @cases[5].content, @cases[8].content] == [@cases[2].content, @cases[2].content, @cases[2].content]
      color_win(@cases[2], @cases[5], @cases[8])
      return true
    else
      return false 
    end

  end

  def verif_diagonales
    if @cases[0].content != " " and [@cases[0].content, @cases[4].content, @cases[8].content] == [@cases[0].content, @cases[0].content, @cases[0].content]
      color_win(@cases[0], @cases[4], @cases[8])
      return true
    elsif @cases[2].content != " " and [@cases[2].content, @cases[4].content, @cases[6].content] == [@cases[2].content, @cases[2].content, @cases[2].content]
      color_win(@cases[2], @cases[4], @cases[6])
      return true
    else
      return false 
    end
  end

  def color_win(cells1, cells2, cells3) # Colore les cases en vert
    cells1.change_color
    cells2.change_color
    cells3.change_color
  end
end
