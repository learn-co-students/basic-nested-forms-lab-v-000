class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

# # # ---------------------------CUSTOMIZED SETTER AND GETTER METHODS----------------------------------------
# def ingredients_object=(ingredients_object)
#   ingredients_object.map do |ingredient|
#       self.ingredients << Ingredient.create(:name => ingredient.name, :quantity => ingredient.quantity)
#   end
# end
#
# def ingredients
#   self.ingredients.map do |ingredient|
#       self.ingredients << Ingredient.create(:name => ingredient.name, :quantity => ingredient.quantity)
#   end
# end
# #   def quantity=(quantity)
#     self.ingredients << Ingredient.create(:quantity => quantity)
#   end
#
#   def quantity
#     self.ingredients.map do |ingredient|
#       ingredient.quantity
#     end
#   end
#
#   def name=(quantity)
#     self.ingredients << Ingredient.create(:quantity => quantity)
#   end
#
#   def name
#     self.ingredients.map do |ingredient|
#       ingredient.quantity
#     end
#   end

end
