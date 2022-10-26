require "diary"

RSpec.describe Diary do
  it "has no entries" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
end