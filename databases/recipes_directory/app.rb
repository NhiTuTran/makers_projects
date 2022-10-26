require_relative 'lib/database_connection'
require_relative 'lib/recipes_directory'

DatabaseConnection.connect('recipes_directory')

recipes_directory = RecipesDirectory.new

recipes = recipes_directory.all

recipes.each do |recipe|
  puts "#{recipe.id} - #{recipe.name} - Cooking time: #{recipe.cooking_time}mins - Rating: #{recipe.rating}/5"
end