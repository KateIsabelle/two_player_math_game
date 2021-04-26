class Game 
  attr_accessor :current_player, :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end
  def switch_player(p)
    @current_player = p
  end
end
