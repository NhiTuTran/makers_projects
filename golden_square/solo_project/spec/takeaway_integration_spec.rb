require "takeaway"
require "menu"

RSpec.describe "integration" do
  it "returns the menu" do
    menu = Menu.new
    takeaway = Takeaway.new(menu)
    menu.add("Dish 1", "£5.50")
    menu.add("Dish 2", "£10.50")
    menu.add("Dish 3", "£12.50")
    result = {"Dish 1" => "£5.50", "Dish 2" => "£10.50", "Dish 3" => "£12.50"}
    expect(takeaway.view).to eq result
  end

  it "saves the order" do
    menu = Menu.new
    takeaway = Takeaway.new(menu)
    menu.add("Dish 1", "£5.50")
    menu.add("Dish 2", "£10.50")
    menu.add("Dish 3", "£12.50")
    takeaway.order("Dish 1", 1)
    takeaway.order("Dish 3", 2)
    expect(takeaway.receipt).to eq "Your order:\n\nDish 1 - £5.50\nDish 3 - £12.50 (x2)\n\nGrand total: £30.50"
  end

  it "fails when given a non-existent dish" do
    menu = Menu.new
    takeaway = Takeaway.new(menu)
    menu.add("Dish 1", "£5.50")
    menu.add("Dish 2", "£10.50")
    menu.add("Dish 3", "£12.50")
    expect{takeaway.order("Dish 4", 1)}.to raise_error "This dish isn't on the menu"
  end
end