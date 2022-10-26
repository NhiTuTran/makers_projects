require "diary_entry1"

RSpec.describe DiaryEntry1 do
  it "contructs" do
    diary_entry = DiaryEntry1.new("Title", "Contents")
    expect(diary_entry.title).to eq "Title"
    expect(diary_entry.contents).to eq "Contents"
  end

  describe "#count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry1.new("Title", "Contents")
      expect(diary_entry.count_words).to eq 1
    end

    it "returns zero when contents is empty" do
      diary_entry = DiaryEntry1.new("Title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "@reading_time" do
    context "given a wpm of some ensible number (200)" do
      it "returns the ceiling of the number of minutes it takes to read the contents" do
        diary_entry = DiaryEntry1.new("Title", "Contents " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end

    context "given a wpm of 0" do
      it "fails" do
        diary_entry = DiaryEntry1.new("Title", "Contents")
        expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
      end
    end

    describe "reading_chunk" do
      context "with a contents readable within the time" do
        it "returns the full contents" do
          diary_entry = DiaryEntry1.new("Title", "Contents")
          chunk = diary_entry.reading_chunk(200, 1)
          expect(chunk).to eq "Contents"
        end
      end

      context "given a wpm of 0" do
        it "fails" do
          diary_entry = DiaryEntry1.new("Title", "Contents")
          expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero."
        end
      end

      context "with a contents unreadable within the time" do
        it "returns a readable chunk" do
          diary_entry = DiaryEntry1.new("Title", "one two three")
          chunk = diary_entry.reading_chunk(2, 1)
          expect(chunk).to eq "one two"
        end

        it "returns the next chunk, next time we are asked" do
          diary_entry = DiaryEntry1.new("Title", "one two three")
          diary_entry.reading_chunk(2, 1)
          chunk = diary_entry.reading_chunk(2, 1)
          expect(chunk).to eq "three"
        end

        it "restarts after reading the whole contents" do
          diary_entry = DiaryEntry1.new("Title", "one two three")
          diary_entry.reading_chunk(2, 1)
          diary_entry.reading_chunk(2, 1)
          chunk = diary_entry.reading_chunk(2, 1)
          expect(chunk).to eq "one two"
        end

        it "restarts if it finishes exactly on the end" do
          diary_entry = DiaryEntry1.new("Title", "one two three")
          diary_entry.reading_chunk(2, 1)
          diary_entry.reading_chunk(1, 1)
          chunk = diary_entry.reading_chunk(2, 1)
          expect(chunk).to eq "one two"
        end
      end
    end
  end
end

#Create Examples as Test
  #diary_entry = DiaryEntry.new("Title", "Contents")
  #expect(diary_entry.title).to eq "Title"

  #diary_entry = DiaryEntry.new("Title", "Contents")
  #expect(diary_entry.contents).to eq "Contents"

  #diary_entry = DiaryEntry.new("Title", "Contents")
  #expect(diary_entry.count_words).to eq 1

  #diary_entry = DiaryEntry.new("Title", "Contents")
  #result = diary_entry.reading_time(200)
  #expect(result).to eq 0

  #diary_entry = DiaryEntry.new("Title", "Contents")
  #result = diary_entry.reading_chunk(200, 10)
  #expect(result).to eq "Contents"