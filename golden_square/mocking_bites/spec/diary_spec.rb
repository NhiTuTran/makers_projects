require "diary"

RSpec.describe Diary do
  it "sets contents and reads" do
    diary = Diary.new("Contents")
    expect(diary.read).to eq "Contents"
  end
end