require "todo"
require "todo_list"

RSpec.describe "integration" do
  it "returns a list of incomplete tasks" do
    todolist = TodoList.new
    todo_1 = Todo.new("Laundry")
    todo_2 = Todo.new("Dishes")
    todo_3 = Todo.new("Cook")
    todolist.add(todo_1)
    todolist.add(todo_2)
    todolist.add(todo_3)
    todo_1.mark_done!
    expect(todolist.incomplete).to eq [todo_2, todo_3]
  end

  it "returns a list of completed tasks" do
    todolist = TodoList.new
    todo_1 = Todo.new("Laundry")
    todo_2 = Todo.new("Dishes")
    todo_3 = Todo.new("Cook")
    todolist.add(todo_1)
    todolist.add(todo_2)
    todolist.add(todo_3)
    todo_1.mark_done!
    todo_2.mark_done!
    expect(todolist.complete).to eq [todo_1, todo_2]
  end

  it "marks all tasks as complete" do
    todolist = TodoList.new
    todo_1 = Todo.new("Laundry")
    todo_2 = Todo.new("Dishes")
    todo_3 = Todo.new("Cook")
    todolist.add(todo_1)
    todolist.add(todo_2)
    todolist.add(todo_3)
    todolist.give_up!
    expect(todolist.complete).to eq [todo_1, todo_2, todo_3]
  end
end