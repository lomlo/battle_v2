require 'game'

describe Game do
  let(:player1) {double :player1}
  let(:player2) {double :player2}
  subject(:game) { described_class.new(player1, player2) }

  before do
    allow(player1).to receive(:turn=)
    allow(player2).to receive(:turn=)
    allow(player1).to receive(:turn)
    allow(player2).to receive(:turn)
    allow(player1).to receive(:receive_damage)
  end

  describe 'responds to' do
    it {is_expected.to respond_to(:attack)}
    it {is_expected.to respond_to(:initial_turns)}
    it {is_expected.to respond_to(:change_turn)}
  end

  describe '#attack' do
    it 'calls the #receive_damage method in the attacked player' do
      allow(player1).to receive(:receive_damage)
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
    it 'calls #change_turn' do
      expect(game).to receive(:change_turn)
      game.attack(player1)
    end
  end

  describe '#initial_turns' do
    it 'calls the turn method of the player' do
      expect(player1).to receive(:turn=)
      game.initial_turns
    end
    it "calls the turn method of the player'" do
      expect(player2).to receive(:turn=)
      game.initial_turns
    end
  end

  describe '#change_turn' do
    it 'calls the turn method of the player' do
      games = Game.new(player1, player2)
      expect(player1).to receive(:turn=)
      games.change_turn
    end
    it "calls the turn method of the player" do
      games = Game.new(player1, player2)
      expect(player2).to receive(:turn=)
      games.change_turn
    end
  end
end
