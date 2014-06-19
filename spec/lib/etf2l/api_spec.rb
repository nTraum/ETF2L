describe "API" do
  it "fetches a player by id" do
    Etf2l.player(5)
  end
  it "fetches a player by SteamID" do
    Etf2l.player("STEAM_0:1:22101769")
  end
  it "fetches a player by SteamID64" do
    Etf2l.player(76561198004469267)
  end
end
