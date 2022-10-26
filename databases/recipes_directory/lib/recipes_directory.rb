require_relative 'recipe'

class RecipesDirectory
  def all
    recipes = []

    sql = 'SELECT id, name, cooking_time, rating FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |recipe_db|
      recipe = Recipe.new
      recipe.id = recipe_db['id']
      recipe.name = recipe_db['name']
      recipe.cooking_time = recipe_db['cooking_time']
      recipe.rating = recipe_db['rating']

      recipes << recipe
    end

    return recipes
  end

  def find(id)
    sql = 'SELECT id, name, cooking_time, rating FROM recipes WHERE id = $1;'
    sql_params = [id]

    result_set = DatabaseConnection.exec_params(sql, sql_params)
    recipe_db = result_set[0]

    recipe = Recipe.new
    recipe.id = recipe_db['id']
    recipe.name = recipe_db['name']
    recipe.cooking_time = recipe_db['cooking_time']
    recipe.rating = recipe_db['rating']

    return recipe
  end
end