require "player"

describe Player do
  subject(:player_1) { described_class.new("name") }
  subject(:player_2) { described_class.new("name") }

  describe "#name" do
    it "contains a players name" do
      expect(player_1.name).to eq "name"
    end
  end

  describe "#points_damage" do
    it 'reduces the player hit points' do
      expect{player_2.points_damage}.to change {player_2.points}.by(-10)
    end
  end
end
