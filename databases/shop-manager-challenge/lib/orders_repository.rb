require_relative "order"
require_relative "items_repository"

class OrdersRepository
  def all
    orders = []

    sql = 'SELECT id, customer_name, order_date FROM orders;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |order_db|
      order = Item.new
      order.id = order_db['id']
      order.customer_name = order_db['customer_name']
      order.order_date = order_db['order_date']

      orders << order
    end

    return orders
  end

  def create(customer_name, item_name)
    current_date = Time.now.strftime("%Y-%m-%d")
    
    sql = 'INSERT INTO orders (customer_name, order_date) VALUES ($1, $2);'
    sql_params = [customer_name, current_date]

    DatabaseConnection.exec_params(sql, sql_params)

    item_id = ItemsRepository.find(item_name).id
    order_id = all[-1].id

    sql = 'INSERT INTO items_orders (item_id, order_id) VALUES ($1, $2);'
    sql_params = [item_id, order_id]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end
end