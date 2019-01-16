class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)

    ingredients_attributes.each_value do |ingredient_attributes|
      self.ingredients.build(ingredient_attributes) if !ingredient_attributes.value?("")
    end
  end
end
