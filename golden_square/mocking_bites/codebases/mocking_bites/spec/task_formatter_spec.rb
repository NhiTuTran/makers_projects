require "task_formatter"

RSpec.describe TaskFormatter do
  it "returns the task formatted if the task is not completed" do
    task = double(:task)
    task_formatter = TaskFormatter.new(task)
    expect(task).to receive(:title).and_return("Laundry")
    expect(task).to receive(:complete?).and_return(false)
    expect(task_formatter.format). to eq "- [ ] Laundry"
  end

  it "returns the task formatted if the task is completed" do
    task = double(:task)
    task_formatter = TaskFormatter.new(task)
    expect(task).to receive(:title).and_return("Laundry")
    expect(task).to receive(:complete?).and_return(true)
    expect(task_formatter.format). to eq "- [x] Laundry"
  end
end