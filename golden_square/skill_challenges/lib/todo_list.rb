class TodoList
  def initialize
    @list = []
  end

  def add(todo)
    @list << todo
  end

  def incomplete
    incomplete_list = []
    @list.each { |task|
      incomplete_list << task if task.done? == false
    }
    return incomplete_list
  end

  def complete
    complete_list = []
    @list.each { |task|
      complete_list << task if task.done? == true
    }
    return complete_list
  end

  def give_up!
    @list.map { |task| task.mark_done! }
  end
end