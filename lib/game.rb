require_relative './player'

class Game

attr_reader :get_hit, :player1, :player2

def initialize (player1, player2)
  @player1 = player1
  @player2 = player2
end

def attack(player)
  player.get_hit
end

end