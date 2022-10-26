require "orders_repository"

RSpec.describe OrdersRepository do
  def reset_orders_table
    seed_sql = File.read('spec/seeds_shop_manager.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'shop_manager_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_orders_table
  end

  it "returns all orders" do
    repo = OrdersRepository.new
    orders = repo.all

    expect(orders.length).to eq 3
    expect(orders.first.id).to eq '1'
    expect(orders.first.customer_name).to eq 'Peter Parker'
    expect(orders.first.order_date).to eq '2022-10-20'
  end

  it "creates a new order" do
    repo = OrdersRepository.new


    customer_name = 'Wanda Maximoff'
    current_date = Time.now.strftime("%Y-%m-%d")
    item_name = 'Bread'

    repo.create(customer_name, item_name)

    all_orders = repo.all

    # Test could fail if ran at 23:59:59
    expect(all_orders).to include(
      have_attributes(
        customer_name: customer_name,
        order_date: current_date,
      )
    )

    sql = 'SELECT item_id, order_id FROM items_orders'
    result = DatabaseConnection.exec_params(sql, [])[-1]

    expect(result['item_id']).to eq '1'
    expect(result['order_id']).to eq '4'
  end
end