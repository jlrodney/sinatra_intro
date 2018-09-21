
class Move
  attr_reader :dmg, :move, :paralysin

  def initialize
    @dmg = 0
    @move = ''
  end

  def splash
    @dmg = rand(5..10)
    @move = 'Splash'
    @paralysin = false
  end

  def thunderbolt
    b = [5, 7, 17, 20, 10]
    @dmg = b.sample
    @move = 'Hydro pump'
    @paralysin = false
    @paralysin = true if rand(100) >= 70
  end

  def tackle
    a = [rand(10), rand(20), rand(100), rand(5)]
    @dmg = a.sample
    @move = 'Tackle'
    @paralysin = false

  end

  def dragon_rage
    @dmg = rand(15...25)
    @move = 'Dragon rage'
    @paralysin = false
    @paralysin = true if rand(100) >= 92
  end

end
