class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_hash)
    ingredients_hash.each do |i, ingredient_attributes|
      self.ingredients.build(ingredient_attributes) unless ingredient_attributes[:name].empty?
    end
  end
end
