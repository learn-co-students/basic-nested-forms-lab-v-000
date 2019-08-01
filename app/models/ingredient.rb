class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  # def recipe_attributes=(title)
  #   self.recipe = Recipe.find_or_create_by(title: recipe[:title])
  #   self.recipe.update(title)
  # end
end
