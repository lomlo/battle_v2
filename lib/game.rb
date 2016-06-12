class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    initial_turns
  end

  def attack(player)
    player.receive_damage
    change_turn
  end

  def initial_turns
    @player1.turn = true
    @player2.turn = false
  end

  def change_turn
    @player1.turn = !(@player1.turn)
    @player2.turn = !(@player2.turn)
  end
end
