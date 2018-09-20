require_relative 'player'
class Game

  attr_reader :players, :turn

  def initialize(player1, player2, player_1_hp = 100, player_2_hp = 100)
    @players = [Player.new(player1, player_1_hp), Player.new(player2, player_2_hp)]
    @turn = 0
  end

  def attack(index)
    @players[index].lose_hp(rand(50))
    switch_turn
  end

  def game_over
    @players[0].dead? || @players[1].dead?
  end

  def switch_turn
    if @turn == 0
      @turn = 1
    else
      @turn =0
    end
  end

  def winner
    return 1 if players[0].dead?
    return 0
  end

end
