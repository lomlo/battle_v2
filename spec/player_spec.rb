require 'player'

describe Player do
  subject(:player1) { described_class.new('Jess') }
  subject(:player2) { described_class.new('Mike') }
  # let(:game) { double :game(player1, player2) }

  describe 'responds to' do
    it { is_expected.to respond_to(:hp) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:receive_damage) }
  end

  describe '#name' do
    context 'when name is Jess' do
      it 'returns the name Jess' do
        expect(player1.name).to eq 'Jess'
      end
    end
    context 'when name is Mike' do
      it 'returns the name Mike' do
        expect(player2.name).to eq 'Mike'
      end
    end
 end

  describe '#hp' do
    it "starts at #{Player::DEFAULT_HEALTH}" do
      expect(player1.hp).to eq "#{Player::DEFAULT_HEALTH}".to_i
    end
  end

  describe '#receive_damage' do
    it "deducts a players hp by #{Player::DEFAULT_ATTACK}" do
      expect{player1.receive_damage}.to change{player1.hp}.by(-"#{Player::DEFAULT_ATTACK}".to_i)
    end
  end

  describe '#turn' do
    it 'defaults to true for player 1' do
      expect(player1.turn).to eq true
    end
    it 'defaults to true for player 2' do
      expect(player2.turn).to eq true
    end
  end
end
