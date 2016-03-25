class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: lambda {|attributes| attributes['name'].blank?}

  # def ingredients_attributes=(ingredients)
  #   ingredients.each do |i, h|
  #     ingredient = Ingredient.find_or_create_by(name: h[:name], quantity: h[:quantity])
  #     self.ingredients << ingredient
  #   end
  # end

end
