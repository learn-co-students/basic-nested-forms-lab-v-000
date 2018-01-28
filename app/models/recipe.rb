class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |ingredient_attributes|
      binding.pry
      Ingredient.create(ingredient_attributes)
    end
  end
end
