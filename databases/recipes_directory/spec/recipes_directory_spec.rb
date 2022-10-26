require "recipes_directory"

RSpec.describe RecipesDirectory do
  def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_recipes_table
  end

  it "returns all recipes" do 
    repo = RecipesDirectory.new
    recipes = repo.all

    expect(recipes.length).to eq 3
    expect(recipes[1].id).to eq '2'
    expect(recipes[1].name).to eq 'Pho'
    expect(recipes[1].cooking_time).to eq '360'
    expect(recipes[1].rating).to eq '5'
  end

  it "returns the single recipe Pizza" do
    repo = RecipesDirectory.new
    pizza_recipe = repo.find(3)

    expect(pizza_recipe.name).to eq 'Pizza'
    expect(pizza_recipe.cooking_time).to eq '12'
    expect(pizza_recipe.rating).to eq '3'
  end
end