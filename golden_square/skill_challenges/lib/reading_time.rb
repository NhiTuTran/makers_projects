def reading_time(str)
  count = str.split.count
  reading_time_per_word = 60.0 / 200.0
  return count * reading_time_per_word
end