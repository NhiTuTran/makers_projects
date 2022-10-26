require "track_tasks"

RSpec.describe "track_tasks method" do
  it "check if text includes the string #TODO" do
    result = track_tasks("#TODO laundry")
    expect(result).to eq true
  end

  it "check if text includes the string #TODO" do
    result = track_tasks("homework")
    expect(result).to eq false
  end
end