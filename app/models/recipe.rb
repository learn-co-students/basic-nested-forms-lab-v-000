class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(hash)
  #   hash.each do |key, value|
  #     self.ingredients << Ingredient.find_or_create_by(name: value["name"])
  #   end
  # end

end
