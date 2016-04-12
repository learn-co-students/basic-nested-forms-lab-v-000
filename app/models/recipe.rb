class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients 
  before_save :erase_empty_ingredients

  def erase_empty_ingredients
    self.ingredients = self.ingredients.select { |item| item.name && item.name != '' || item.quantity && item.quantity != '' }
  end 
  
end
