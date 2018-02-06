class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(ingredients_attributes)
  #   ingredients_attributes.each do |ingredient|
  #   # self.ingredient = Ingredient.find_or_create_by(name: ingredient.name)
  #   self.ingredients.build(ingredient)
  #   end
  # end

end
