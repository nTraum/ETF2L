describe API, vcr: true do
  context "when fetched by id" do
    let(:id) { 10512 }
    subject(:player) { API.player(id) }

    xit "fetches the bans" do
    end

    it "fetches the classes" do
      expect(player.classes).to include("Demoman", "Soldier")
    end

    it "fetches the country" do
      expect(player.country).to eq("Germany")
    end

    it "fetches the id" do
      expect(player.id).to eq(id)
    end

    it "fetches the name" do
      expect(player.name).to eq("nTraum")
    end

    it "fetches the nickname" do
      expect(player.nickname).to eq("nTraum")
    end

    it "fetches the title" do
      expect(player.title).to eq("Site Admin")
    end

    it "fetches the steam avatar" do
      expect(player.steam.avatar).to eq("http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/65/65044ba608c1a1c03a163e9d8291871e2e9474cf_full.jpg")
    end

    it "fetches the SteamID" do
      expect(player.steam.id).to eq("STEAM_0:0:18721806")
    end

    it "fetches the SteamID64" do
      expect(player.steam.id64).to eq(76561197997709340)
    end
  end
end
