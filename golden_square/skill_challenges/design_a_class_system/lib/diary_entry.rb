class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def contents
    return @contents
  end

  def title
    return @title
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Reading speed must be above zero." unless wpm.positive?
    return count_words / wpm
  end
end