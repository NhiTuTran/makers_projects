class Diary
  def initialize
    @diary = []
  end

  def add(entry)
    @diary << entry
  end

  def all
    @diary
  end

  def count_words
    @diary.map { |entry| entry.count_words }.sum
  end

  def reading_time(wpm)
    return count_words / wpm
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    can_read = wpm * minutes
    entries = {}
    @diary.each { |entry|
      if entry.count_words <= can_read
        entries[entry] = entry.count_words
      end
    }
    entries.sort_by { |entry, count| count }.reverse.to_h.keys[0]
  end
end