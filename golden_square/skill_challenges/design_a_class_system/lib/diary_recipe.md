# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌───────────────────────────────────────┐
│ Diary                                 │
│                                       │
│ - add(entry)                          │
│ - all                                 │
│ - find_best_entry_for_reading_time    |
| - all_contacts                        │
| - add_contact                         |
| - todo_list                           |
└───────────┬───────────────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐       ┌─────────────────────────┐
│ DiaryEntry              │       │ TodoList                │
│                         │       │                         │
│ - title                 │       │ - add                   │
│ - contents              |       │ - list                  |
| - count_words           |       | - complete_task         |
| - reading_time          │       └─────────────────────────┘
└─────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    # ...
  end

  def add(entry) # entry is an instance of DiaryEntry
    # DiaryEntry gets added to the diary
    # Returns nothing
  end

  def all
    # Returns past diary entries
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # Returns the diary entry that the user could read furthest in the minutes that they have available
  end

  def add_contact(name, contact) # name is a string, contact is an integer
    # Adds a contact to the diary
  end

  def all_contacts
   # Returns a hash of all mobile phone numbers with names
  end

  def todo_list
    # Returns the todo list
  end
end

class DiaryEntry
  def initialize(title, contents)
    # ...
  end

  def contents
    # Returns the contents
  end

  def title
    # Returns the title
  end

  def count_words
    # Returns the number of words in contents
  end

  def reading_time(wpm)
    # Returns the time in minutes to read the contents given a wpm
  end
end

class TodoList
  def initialize
    # ...
  end

  def add(task) # task is a string
    # Adds a task to the list
    # Returns nothing
  end

  def list
    # Returns the list of tasks
  end

  def complete_task(task) # task is a string
    # Removes a task from the list
    # Returns nothing
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# Adds and returns all entries
diary = Diary.new
entry_1 = DiaryEntry.new("Entry 1", "one two")
entry_2 = DiaryEntry.new("Entry 2", "three four five six")
diary.add(entry_1)
diary.add(entry_2)
diary.all # => [entry_1, entry_2]

# Finds best entry for reading time
diary = Diary.new
entry_1 = DiaryEntry.new("Entry 1", "one two")
entry_2 = DiaryEntry.new("Entry 2", "three four five six")
diary.add(entry_1)
diary.add(entry_2)
diary.find_best_entry_for_reading_time(2, 4) # => entry_2

# Returns the todo list
diary = Diary.new
diary.todo_list # => instance of todo_list (.instance_of?)
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
## Diary tests

# Empty list of entries
diary = Diary.new
diary.all # => []

# Empty list of contacts
diary = Diary.new
diary.all_contacts # => {}

# Returns all contacts
diary = Diary.new
diary.add_contact("Bob Smith", 07896797685)
diary.all_contacts # => {"Bob Smith"=>07896797685}

## DiaryEntry tests

# Constructs
entry = DiaryEntry.new("Entry 1", "one two")
entry.title # => "Entry 1"
entry.contents # => "one two"

# Returns the number of words in contents
entry = DiaryEntry.new("Entry 1", "one two")
entry.count_words # => 2

# Returns the reading time
entry = DiaryEntry.new("Entry 1", "one two")
entry.reading_time(1) # => 2

# Fails given negative wpm
entry = DiaryEntry.new("Entry 1", "one two")
entry.reading_time(-1) # => fail

## TodoList tests

# Constructs
task = TodoList.new
task.list # => []

# Returns all tasks
task = TodoList.new
task.add("Laundry")
task.add("Dishes")
task.list # => ["Laundry", "Dishes"]

# Remove completed tasks
task = TodoList.new
task.add("Laundry")
task.add("Dishes")
task.complete_task("Laundry")
task.list # => ["Dishes"]

# Fails when given a non-existent task to complete
task = TodoList.new
task.add("Laundry")
task.add("Dishes")
task.complete_task("Cook") # => fail
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._