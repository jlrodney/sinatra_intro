class Player
  attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def lose_hp(amount)
    @hp -= amount
  end
end
