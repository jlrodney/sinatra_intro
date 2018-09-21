require_relative 'player'
class Game

  attr_reader :players, :turn, :not_turn

  def initialize(player1, player2, player_1_hp = 100, player_2_hp = 100)
    @players = [Player.new(player1, player_1_hp), Player.new(player2, player_2_hp)]
    @turn = @players[rand(2)]
    @not_turn = @players[0]
  end

  def attack(player,move)
    @players[player].lose_hp(move.dmg)
    switch_turn unless move.paralysin
  end

  def game_over
    @players[0].dead? || @players[1].dead?
  end

  def switch_turn
    if @turn == @players[0]
      @turn = @players[1]
      @not_turn = @players[0]
    else
      @turn = @players[0]
      @not_turn = @players[1]
    end
  end

  def winner
    return 1 if players[0].dead?
    return 0
  end

  def turn_link
    if turn == @players[0]
      "player_1_attacks"
    else
      "player_2_attacks"
    end
  end

end
