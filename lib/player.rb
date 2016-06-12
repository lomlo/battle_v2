class Player
  DEFAULT_HEALTH = 100
  DEFAULT_ATTACK = 10

  attr_reader :name
  attr_accessor :hp, :turn

  def initialize(name)
    @hp = DEFAULT_HEALTH
    @name = name
    @turn = true
  end

  def receive_damage
    self.hp -= DEFAULT_ATTACK
  end
end
