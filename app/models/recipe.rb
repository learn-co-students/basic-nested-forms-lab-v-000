class Recipe < ActiveRecord::Base
  has_many :ingredients
  def ingredients_attributes=(ingredients_attributes)
		  #raise ingredients_attributes.inspect
			ingredients_attributes.each do |i, ingredient|
				#want to create an adress attributes for each person
		 self.ingredients.build(ingredient)
		end
	end
end
