require "diary"
require "diary_entry"

RSpec.describe "integration" do
  it "adds and returns all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Entry 1", "one two")
    entry_2 = DiaryEntry.new("Entry 2", "three four five six")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.all).to eq [entry_1, entry_2]
  end

  it "finds best entry for reading time" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Entry 1", "one two")
    entry_2 = DiaryEntry.new("Entry 2", "three four five six")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.find_best_entry_for_reading_time(2, 4)).to eq entry_2
  end

  it "returns the todo list" do
    diary = Diary.new
    expect(diary.todo_list.instance_of?(TodoList)).to eq true
  end
end