class Recipe < ActiveRecord::Base
  has_many :ingredients 

  # we call it ingredients_attributes not to step on the AR .ingredients method that we still need
  # fields_for provides us with a hash, not an array!!
  def ingredients_attributes=(ingredients_attributes)
  	# raise ingredients_attributes.inspect
  	ingredients_attributes.values.each do |ingredient_attributes|
  		# we add the the ingredients collection, using mass assignment, ingredients_attributes have already been sanitized by strong params
  		self.ingredients.build(ingredient_attributes)
  	end
  end

end
