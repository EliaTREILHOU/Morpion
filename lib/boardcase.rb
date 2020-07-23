class BoardCase
  attr_reader :content
  
  def initialize(position)
    # Ici on initialise une cellule du jeu
    @position = position
    @content = " "
  end

  def content_change(value)
    @content = value
  end

  def color_change
    @content = @content.colorize(:green)
  end
end
