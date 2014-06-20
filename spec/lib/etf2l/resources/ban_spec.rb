describe Ban do
  let(:start_unix_time) { 200 }
  let(:end_unix_time) { 300 }
  let(:reason) { "VAC Ban" }
  let(:attributes) { { "start" => start_unix_time, "end" => end_unix_time, "reason" => reason } }
  subject(:ban) { described_class.new(attributes)}

  it "has a start time" do
    expect(ban.start).to eq(Time.at(start_unix_time))
  end

  it "has an end time" do
    expect(ban.end).to eq(Time.at(end_unix_time))
  end

  it "has a reason" do
    expect(ban.reason).to eq(reason)
  end

  it "calculates the duration of the ban" do
    expect(ban.duration).to eq(100)
  end
end
