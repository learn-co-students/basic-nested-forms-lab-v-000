class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients)
    ingredients.each do |i, ingredient|
      self.ingredients.build(ingredient)
    end
  end
end
