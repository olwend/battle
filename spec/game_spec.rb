require './lib/game'
require './lib/player'

describe Game do
  subject(:game) { Game.new(player1,player2) }
  let(:player1) { double('player1', :points => 100) }
  let(:player2) { double('player2', :points => 100, :points_damage => 90) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player2
    end
  end


  it 'starts a new game with two players' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it '#attack' do
    expect(game.attack(player2)).to eq player2.points_damage(90)
  end
end
