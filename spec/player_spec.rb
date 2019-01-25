require 'player'

describe Player do
 subject(:player1) { Player.new('Raymond') }
 subject(:player2) { Player.new('Jessie') }

 describe '#name' do
   it 'returns the name' do
     expect(player1.name).to eq 'Raymond'
   end
 end

 describe '#get_hit' do
   it 'returns the hit points' do
     expect(player1.score).to eq described_class::DEFAULT_SCORE
   end
 end
end
