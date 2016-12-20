class Recipe < ActiveRecord::Base
  has_many :ingredients
   accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)
    self.ingredients.build(ingredients_attributes)
  end

end
