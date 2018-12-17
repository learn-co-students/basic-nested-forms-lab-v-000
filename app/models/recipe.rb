require 'pry'
class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients


#   def ingredients_attributes=(ingredients)
#     binding.pry
#     self.ingredients = Ingredient.find_or_create_by(name: ingredient.name)
#     self.ingredients.update(ingredient)
# end


end
