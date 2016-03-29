class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
before_save :remove_empty_ingredients

  def remove_empty_ingredients
    self.ingredients = self.ingredients.select do |i|
     i.name && i.name !='' || i.quantity && i.quantity != ""
   end
 end
end
