class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
   
  # def ingredient_attributes=(ingredient_attributes)
  #   ingredient_attributes.each do |i, ing|
  #     self.ingredients.build(ing)
  #   end
  # end

end
