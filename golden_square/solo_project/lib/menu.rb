class Menu
  def initialize
    @menu = {}
  end

  def add(dish, price)
    @menu[dish] = price
  end

  def all
    return @menu
  end
end