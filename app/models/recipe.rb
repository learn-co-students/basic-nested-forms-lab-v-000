class Recipe < ActiveRecord::Base
  has_many :ingredients
#   accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |attr|
      self.ingredients << Ingredient.new(attr[1])
    end
  end

end
