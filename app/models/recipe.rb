class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
  	ingredients.values.each do |value|
  		ingredient = Ingredient.find_or_create_by(name: value[:name])
  		ingredient.update(value)
  		self.ingredients << ingredient unless value[:name].empty?
  	end
  end
end
