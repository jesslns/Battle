require 'player'

describe Player do
  subject(:player1) {Player.new('Raymond')}

  describe "#name" do
    it "shows player name" do
      expect(player1.name).to eq 'Raymond'
    end
  end

end
