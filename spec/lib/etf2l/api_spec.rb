describe API, vcr: true do
  context "when the player is fetched by id" do
    let(:identifier) { 10512 }
    subject(:player) { described_class.player(identifier) }

    it "fetches the bans" do
      expect(player.bans).to be_empty
      expect(player.banned?).to eq(false)
    end

    it "fetches the classes" do
      expect(player.classes).to include("Demoman", "Soldier")
    end

    it "fetches the country" do
      expect(player.country).to eq("Germany")
    end

    it "fetches the id" do
      expect(player.id).to eq(identifier)
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

  context "when the player is currently banned" do
    let(:identifier) { 91596 }
    subject(:player) { described_class.player(identifier) }

    it "is banned" do
      expect(player.banned?).to eq(true)
    end

    it "fetches the ban start time" do
      expect(player.bans.first.start).to eq(Time.at(1398463200))
    end

    it "fetches the ban end time" do
      expect(player.bans.first.end).to eq(Time.at(1429999200))
    end

    it "fetches the ban reason" do
      expect(player.bans.first.reason).to eq("VAC Ban")
    end
  end
end
