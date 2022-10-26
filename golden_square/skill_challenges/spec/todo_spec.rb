require "todo"

RSpec.describe Todo do
  it "returns the task as a string" do
    todo_1 = Todo.new("Laundry")
    todo_2 = Todo.new("Dishes")
    expect(todo_1.task).to eq "Laundry"
    expect(todo_2.task).to eq "Dishes"
  end

  it "marks the task as done" do
    todo = Todo.new("Laundry")
    expect(todo.mark_done!).to eq true
  end

  it "returns the task as done" do
    todo = Todo.new("Laundry")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
end