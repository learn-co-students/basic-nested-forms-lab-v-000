class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  # def ingredient_attributes=(attributes)
  #   byebug
  #   attributes.each do |attr|
  #     # byebug
  #     if !attr.empty?
  #       ingredient = Ingredient.create(attr)
  #       self.ingredients << ingredient
  #     end
  #   end
  #   self.ingredients
  # end
  #
  # def ingredient_attributes
  #   self.try(:ingredient).try(:name, :quantity)
  # end
end
