class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  # def ingredients_attributes=(ingredients_attributes)
  #   # byebug
  #   # ingredients_attributes.each do |ingredient|
  #   #   Ingredient.where(:name => ingredients_attributes[:name]).first_or_create do
  #   #     ingredient.name = ingredients_attributes[:name]
  #   #     ingredient.quantity = ingredients_attributes[:quantity]
  #   #   end
  #   # end
  #   ingredients_attributes.each do
  #     # byebug
  #     self.ingredients.build(ingredients_attributes)
  #     # byebug
  #   end
end
