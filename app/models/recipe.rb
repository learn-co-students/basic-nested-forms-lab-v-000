class Recipe < ActiveRecord::Base
  has_many :ingredients

  # def recipe_attributes=(recipe)
  #   self.recipe = Recipe.find_or_create_by(title: recipe.title)
  #   self.recipe.update(recipe)
  # end
end
