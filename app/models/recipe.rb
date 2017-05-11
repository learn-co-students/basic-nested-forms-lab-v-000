class Recipe < ActiveRecord::Base
  has_many :ingredients 

    accepts_nested_attributes_for :ingredients

  # def ingredients_atrributes=(ingredients_atrributes)
  # 	ingredients_atrributes.each do |ingredient_attribute|
  # 		self.ingredients.build(ingredient_attribute)
  # 	end 
  # end 
end
