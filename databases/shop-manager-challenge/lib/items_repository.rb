require_relative "item"

class ItemsRepository
  def all
    items = []

    sql = 'SELECT id, name, unit_price, quantity FROM items;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |item_db|
      item = Item.new
      item.id = item_db['id']
      item.name = item_db['name']
      item.unit_price = item_db['unit_price']
      item.quantity = item_db['quantity']

      items << item
    end

    return items
  end

  def find(item_name)
    sql = 'SELECT id, name, unit_price, quantity FROM items WHERE item_name = $1;'
    sql_params  = [item_name]

    result_set = DatabaseConnection.exec_params(sql, sql_params)
    item_db = result_set[0]

    item = Item.new
    item.id = item_db['id']
    item.name = item_db['name']
    item.unit_price = item_db['unit_price']
    item.quantity = item_db['quantity']

    return item
  end

  def create(name, unit_price, quantity)
    sql = 'INSERT INTO items (name, unit_price, quantity) VALUES ($1, $2, $3);'
    sql_params = [name, unit_price, quantity]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end
end