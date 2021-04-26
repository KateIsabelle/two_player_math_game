class Game 
  attr_accessor :in_progress, :current_player, :question, :response, :player1, :player2

  def initialize
    @in_progress = true
    @current_player = 1
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end
  def switch_player(s)
    @current_player = s
  end
end
