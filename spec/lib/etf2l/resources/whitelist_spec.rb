describe Whitelist do
  let(:name) { "ETF2L Season 18" }
  let(:filename) { "etf2l_whitelist_6v6" }
  let(:last_change_unix_time) { 100 }
  let(:url) { "http://etf2l.org/configs/etf2l_whitelist_6v6.txt" }
  let(:attributes) { { "name" => name, "filename" => filename, "last_change" => last_change_unix_time, "url" => url } }
  subject(:whitelist) { described_class.new(attributes)}

  it "has a name" do
    expect(whitelist.name).to eq(name)
  end

  it "has a filename" do
    expect(whitelist.filename).to eq(filename)
  end

  it "has a last change timestamp" do
    expect(whitelist.last_change).to eq(Time.at(last_change_unix_time))
  end

  it "has an URL" do
    expect(whitelist.url).to eq(url)
  end
end
