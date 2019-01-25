require_relative './player'

class Game

attr_reader :get_hit, :player1, :player2, :turn

def initialize (player1, player2)
  @player1 = player1
  @player2 = player2
  @turn = @player1
end

def attack(player)
  player.get_hit
end

def not_turn
  if @turn == @player1
    @player2
  elsif @turn == @player2
    @player1
  end
end

def switch_turn
  case @turn
  when @player1
    @turn = @player2
  when @player2
    @turn = @player1
  end
end

end
