class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
  before_save :only_used_ingredients

  def only_used_ingredients
    self.ingredients = self.ingredients.find_all { |ingredient| ingredient.name != '' || ingredient.quantity != '' }
  end
end
