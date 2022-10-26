require_relative './lib/database_connection'
require_relative './lib/item_repository'
require_relative './lib/order_repository'

class Application
  def initialize(shop_manager, io, items_repository, orders_repository)
    DatabaseConnection.connect('shop_manager')
    @io = io
    @items_repository = items_repository
    @orders_repository = orders_repository
  end

  def run
    item = @items_repository.all
    order = @orders_repository.all
    
    @io.puts "Welcome to the shop management program!\n\n"
    @io.puts "What do you want to do?\n 1 = list all shop items\n 2 = create a new item\n 3 = list all orders\n 4 = create a new order\n\n"
    @io.print "Enter your choice: "
    choice = @io.gets.chomp.to_i
      case choice
      when 1
        @io.puts "\nHere's a list of all shop items:"
        item.each do |item_db|
          @io.puts " ##{item.id} #{item.name} - Unit price: #{item.unit_price} - Quantity: #{item.quantity}\n"
        end
      when 2
        @io.puts "\nEnter new item name:"
        item_name = @io.gets.chomp
        @io.puts "\nEnter new item unit price"
        item_unit_price = @io.gets.chomp
        @io.puts "\nEnter new item quantity"
        item_quantity = @io.gets.chomp
        @item_repository.create(item_name, item_unit_price, item_quantity)
        @io.puts "New item has been added to the list"
      when 3
        @io.puts "\nHere's a list of all orders:"
        order.each do |order_db|
          @io.puts " ##{order.id} #{order.customer_name} - Order date: #{order.order_date} - Items:\n"
        end
      when 4
        @io.puts "\nEnter customer name:"
        order_customer_name = @io.gets.chomp
        @io.puts "Enter item name:"
        item_1 = @io.gets.chomp
        @io.puts "Add another item? (Y/N)"
        # Loop with boolean
        
        #SELECT items.id, items.name, items.unit_price, items.quantity, orders.id, orders.customer_name, orders.order_date
        #FROM items
        #JOIN items_orders ON items_orders.item_id = items.id
        #JOIN orders ON orders.id = items_orders.order_id;
      end
  end

  if __FILE__ == $0
    app = Application.new(
      'shop_manager',
      Kernel,
      ItemsRepository.new,
      OrdersRepository.new
    )
    app.run
  end
end