require "todo_list"

RSpec.describe TodoList do
  it "contructs" do
    task = TodoList.new
    expect(task.list).to eq []
  end

  it "returns all tasks" do
    task = TodoList.new
    task.add("Laundry")
    task.add("Dishes")
    expect(task.list).to eq ["Laundry", "Dishes"]
  end

  it "removes completed tasks" do
    task = TodoList.new
    task.add("Laundry")
    task.add("Dishes")
    task.complete_task("Laundry")
    expect(task.list).to eq ["Dishes"]
  end

  it "fails when given a non-existent task to complete" do
    task = TodoList.new
    task.add("Laundry")
    task.add("Dishes")
    expect{task.complete_task("Cook")}.to raise_error("Task not on list")
  end
end