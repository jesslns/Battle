require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player1) { double :player }
  let(:player2) { double :player }

  it "attacks player2" do
    expect(player2).to receive(:get_hit)
    game.attack(player2)
  end

end
