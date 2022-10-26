require "todo_list"

class Diary
  def initialize
    @diary = []
    @todo_list = TodoList.new
    @contacts = {}
  end

  def add(entry)
    @diary << entry
  end

  def all
    return @diary
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

  def add_contact(name, contact)
    @contacts[name] = contact
  end

  def all_contacts
   return @contacts
  end

  def todo_list
    return @todo_list
  end
end