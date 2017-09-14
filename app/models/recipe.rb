class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  # def ingredients_attributes=(ingredients)
  #   binding.pry
  #     self.ingredients.build(ingredients)
  #   end
  # end

end
