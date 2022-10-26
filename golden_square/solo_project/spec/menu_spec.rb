require "menu"

RSpec.describe Menu do
  it "Returns a list of dishes and prices" do
    menu = Menu.new
    menu.add("Dish 1", "£5.50")
    menu.add("Dish 2", "£10.50")
    menu.add("Dish 3", "£12.50")
    result = {"Dish 1" => "£5.50", "Dish 2" => "£10.50", "Dish 3" => "£12.50"}
    expect(menu.all).to eq result
  end
end