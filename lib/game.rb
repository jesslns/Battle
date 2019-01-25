require_relative './player'

class Game

attr_reader :get_hit

def attack(player)
  player.get_hit
end

end
