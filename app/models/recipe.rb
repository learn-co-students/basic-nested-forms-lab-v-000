class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def recipe_ingredients=(recipe_ingredients)
  #   recipe_ingredients.each do |recipe_ingredient|
  #     self.ingredients.build(recipe_ingredient)
  #   end
  # end
  #
  # def recipe_ingredients
  #   self.ingredients ? self.ingredients.name : nil
  # end
end
