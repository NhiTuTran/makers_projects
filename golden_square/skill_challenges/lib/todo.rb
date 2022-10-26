class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  def task
    @task
  end

  def mark_done!
    @done = true
  end

  def done?
    return @done
  end
end