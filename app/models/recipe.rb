class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
  before_save :clean_empty_ingredients
  
  def clean_empty_ingredients
  	self.ingredients = self.ingredients.select do |ing|
  		ing.name && ing.name !='' || ing.quantity && ing.quantity != ""
  	end
  end
end
