require 'player'

describe Player do
  subject(:player1) {Player.new('Raymond')}
  subject(:player2) {Player.new('Jessie')}

  describe "#name" do
    it "shows player name" do
      expect(player1.name).to eq 'Raymond'
    end
  end

  it "attacks player 2" do
    expect(player2).to receive(:is_hit)
    player1.attack(player2)
  end

  it "lost HPs" do
    expect {player2.is_attacked}.to change{player2.score}.by (-10)
  end

end
