class TodoList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def list
    return @tasks
  end

  def complete_task(task)
    fail "Task not on list" unless @tasks.include?(task)
    @tasks.delete(task)
  end
end