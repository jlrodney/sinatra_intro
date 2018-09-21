
class Move
  attr_reader :dmg, :move

  def initialize
    @dmg = 0
    @move = ''
  end

  def splash
    @dmg = rand(5..10)
    @move = 'Splash'
  end

  def hydro_pump
    b = [17, 17, 17, 20, 16]
    @dmg = b.sample
    @move = 'Hydro pump'
  end

  def tackle
    a = [rand(10), rand(20), rand(100), rand(5)]
    @dmg = a.sample
    @move = 'Tackle'
  end

  def dragon_rage
    @dmg = rand(15...25)
    @move = 'Dragon rage'
  end

end
