class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes
  #   ingredients_attributes
  # end

  # def ingredients_attributes=(ingredients_attributes)
  #   # ingredients_attributes = {
  #   #   "0" => {name: "thing", quantity: "amount"},
  #   #   "1" = {name: "thing", quantity: "amount"}
  #   # }

  #   ingredients_attributes.each do |k,v|
  #     self.ingredients.build[k] = v
  #   end
  # end
end
