require "diary"
require "diary_entry"

RSpec.describe "integration" do
  it "adds an entry into the diary" do
    diary = Diary.new
    diary_entry = DiaryEntry.new("Title", "Contents")
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
  end

  it "adds all entries into the diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "Contents")
    diary_entry_2 = DiaryEntry.new("Title", "Contents")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  it "returns the number of words in all entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "one two three")
    diary_entry_2 = DiaryEntry.new("Title", "four five")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.count_words).to eq 5
  end

  it "returns the estimated reading time in minutes" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "one two three")
    diary_entry_2 = DiaryEntry.new("Title", "four five")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.reading_time(1)).to eq 5
  end

  it "returns the entry that the user could read furthest in the minutes that they have available" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Title", "one two three")
    diary_entry_2 = DiaryEntry.new("Title", "four five")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.find_best_entry_for_reading_time(1, 5)).to eq diary_entry_1
  end
end