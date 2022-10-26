require "diary_entry"

RSpec.describe DiaryEntry do
  it "contructs" do
    diary_entry = DiaryEntry.new("Title", "Contents")
    expect(diary_entry.title).to eq "Title"
    expect(diary_entry.contents).to eq "Contents"
  end

  it "returns the number of words in contents" do
    diary_entry = DiaryEntry.new("Title", "one two three")
    expect(diary_entry.count_words).to eq 3
  end

  it "returns the reading time" do
    diary_entry = DiaryEntry.new("Title", "one two three")
    expect(diary_entry.reading_time(1)).to eq 3
  end

  it "fails if given a wpm of 0" do
    diary_entry = DiaryEntry.new("Title", "Contents")
    expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
  end

  describe "reading_chunk" do
    context "with a contents readable within the time" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("Title", "Contents")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "Contents"
      end
    end

    context "given a wpm of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("Title", "Contents")
        expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero."
      end
    end

    context "with a contents unreadable within the time" do
      it "returns a readable chunk" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end

      it "returns the next chunk, next time we are asked" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three"
      end

      it "restarts after reading the whole contents" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end

      it "restarts if it finishes exactly on the end" do
        diary_entry = DiaryEntry.new("Title", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
    end
  end
end