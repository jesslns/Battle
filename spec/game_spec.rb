require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe "#player1" do
    it "first player joined" do
    expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "second player joined" do
    expect(game.player2).to eq player2
    end
  end

  describe "#attack" do
    it "attacks player2" do
      expect(player2).to receive(:get_hit)
      game.attack(player2)
    end
  end

  describe "#turn" do
    it "player1's turn at start" do
      expect(game.turn).to eq(player1)
    end
  end
end
