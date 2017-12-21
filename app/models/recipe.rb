class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients


  #def ingredients_attributes=(ingredients)
   # ingredients.each do |k, ingredient|
    #  ingredient = Ingredient.create_or_find_by(name: ingredient)
     # self.ingredients << ingredient
    #end
  #end
end
