describe Ban do
  it "calculates the duration of the ban" do
    ban = Ban.new({ "start" => 200, "end" => 300 })

    expect(ban.duration).to eq(100)
  end
end
