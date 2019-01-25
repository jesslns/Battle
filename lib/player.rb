require_relative './game'

class Player
attr_reader :name, :score
DEFAULT_SCORE = 60

def initialize(name, score=DEFAULT_SCORE)
  @name=name
  @score = score
end

def get_hit
  @score -= 10
end

end
