class Takeaway
  def initialize(menu)
    @menu = menu
    @customer_order = {}
  end

  def view
    return @menu.all
  end

  def order(dish, quantity)
    fail "This dish isn't on the menu" unless @menu.all.has_key?(dish)
    @customer_order[dish] = quantity
  end

  def receipt
    sum = 0.0
    @customer_order.each{ |dish, quantity| sum += quantity * @menu.all[dish].delete("£").to_f }
    
    str = "Your order:\n\n"
    @customer_order.each do |dish, quantity|
      if quantity == 1
        str += "#{dish} - #{@menu.all[dish]}\n"
        next
      end

      str += "#{dish} - #{@menu.all[dish]} (x#{quantity})\n"
    end

    str += "\nGrand total: £#{sprintf("%.2f", sum)}"
    
    return str
  end
end