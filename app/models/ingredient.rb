class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  #def ingredient_attributes=(ingredient)
  #  self.ingredient = Ingredient.find_by(name: ingredient.name)
  #end
end
