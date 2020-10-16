describe Player do

  describe '#name' do
    it "returns the player's name" do
      player = Player.new('Otis')
      expect(player.name).to eq 'Otis'
    end
  end
end
