require "items_repository"

RSpec.describe ItemsRepository do
  def reset_items_table
    seed_sql = File.read('spec/seeds_shop_manager.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'shop_manager_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_items_table
  end

  it "returns all items" do
    repo = ItemsRepository.new
    items = repo.all

    expect(items.length).to eq 3
    expect(items.first.id).to eq '1'
    expect(items.first.name).to eq 'Bread'
    expect(items.first.unit_price).to eq '1.50'
    expect(items.first.quantity).to eq '99'
  end

  it "creates a new item" do
    repo = ItemsRepository.new

    name = 'Eggs'
    unit_price = '3.99'
    quantity = '30'

    repo.create(name, unit_price, quantity)

    all_items = repo.all

    expect(all_items).to include(
      have_attributes(
        name: name,
        unit_price: unit_price,
        quantity: quantity
      )
    )
  end
end