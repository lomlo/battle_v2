class Player
  DEFAULT_HEALTH = 100
  DEFAULT_ATTACK = 10

  attr_reader :name
  attr_accessor :hp, :turn

  def initialize(name)
    @hp = DEFAULT_HEALTH
    @name = name
    @turn = true
    @looses = false
  end

  def receive_damage
    self.hp -= DEFAULT_ATTACK
  end

  def looses?
    @looses = true if self.hp <= 0
    @looses
  end
end
