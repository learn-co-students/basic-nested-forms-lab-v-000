class Recipe < ActiveRecord::Base
  has_many :ingredients 
  
  def ingredients_attributes=(ingredients_attributes)
  	ingredients_attributes.each do |i, ingredient_attribute|
  		self.ingredients.build(ingredient_attribute)
  	end
  end

  def recipe_attributes=(recipe_attributes)
  	self.recipe = Recipe.where(:title => recipe_attributes[:title]).first_or_create do
  		r.quantity = recipe_attributes[:quantity]
  end

  end
end
