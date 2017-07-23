class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    # raise ingredients_attributes.inspect
    ingredients_attributes.values.each do |ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end
end
