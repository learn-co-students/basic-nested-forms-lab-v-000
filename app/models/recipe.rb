class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  # def ingredient=(name, quantity)
  #   self.ingredients << Ingredient.find_or_create_by(name: name, quantity: quantity)
  # end
end
