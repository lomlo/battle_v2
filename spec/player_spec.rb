require 'player'

describe Player do
  subject(:player1) { described_class.new('Jess') }
  subject(:player2) { described_class.new('Mike') }

  describe 'responds to' do
    it { is_expected.to respond_to(:hp) }
    it { is_expected.to respond_to(:attack) }
    it { is_expected.to respond_to(:name) }
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
      expect(player1.hp).to eq 100
    end
  end

  describe '#attack' do
    it "it reduces Player 2's health by 10" do
      player1.attack(player2)
      expect(player2.hp).to eq 90
    end
  end
end
