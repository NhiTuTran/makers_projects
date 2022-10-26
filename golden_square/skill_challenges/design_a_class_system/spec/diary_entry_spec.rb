require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Entry 1", "one two")
    expect(entry.title).to eq "Entry 1"
    expect(entry.contents).to eq "one two"
  end

  it "returns the number of words in contents" do
    entry = DiaryEntry.new("Entry 1", "one two")
    expect(entry.count_words).to eq 2
  end

  it "returns the reading time" do
    entry = DiaryEntry.new("Entry 1", "one two")
    expect(entry.reading_time(1)).to eq 2
  end

  it "reading time fails when given negative wpm" do
    entry = DiaryEntry.new("Entry 1", "one two")
    expect{entry.reading_time(-1)}.to raise_error ("Reading speed must be above zero.")
  end
end