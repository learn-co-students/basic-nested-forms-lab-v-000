class Recipe < ActiveRecord::Base
  has_many :ingredients
  before_save :erase_empty_ingredients

  def ingredients_attributes= (ingredients_attributes)
    ingredients_attributes.each do |i, ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end

  def erase_empty_ingredients
    self.ingredients = self.ingredients.select {|i| i.name != '' || i.quantity != ''}
  end
end
