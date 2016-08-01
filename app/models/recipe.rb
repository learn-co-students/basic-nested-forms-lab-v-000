class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
  	ingredients.each do |id, hash|
  		ingredient = Ingredient.new(hash)
  		self.ingredients << ingredient
  	end
  end

end
