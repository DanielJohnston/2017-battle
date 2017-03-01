require 'game'
describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:lost_game) { described_class.new(losing_player, player_2) }
  let(:player_1) { double :player, hit_points: 60 }
  let(:player_2) { double :player, hit_points: 60 }
  let(:losing_player) { double :player, hit_points: 0 }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'returns false if nobody is at or below 0HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if somebody is at or below 0HP' do
      expect(lost_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns the losing player when a game is ended' do
      expect(lost_game.losing_player).to eq losing_player
    end
  end
end
