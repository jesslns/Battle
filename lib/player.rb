class Player
attr_reader :name, :score
DEFAULT_SCORE = 60

def initialize(name, score=DEFAULT_SCORE)
  @name=name
  @score = score
end

def attack(player)
  player.is_hit
end

def is_hit
  @score -= 10
end

end
