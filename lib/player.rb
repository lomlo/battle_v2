class Player
  DEFAULT_HEALTH = 100

  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @hp = DEFAULT_HEALTH
    @name = name
  end

  def attack(player)
    player.recieve_damage
  end

  def recieve_damage
    self.hp -= 10
  end
end
