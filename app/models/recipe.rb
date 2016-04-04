class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  before_save :fix_empty_ingredients

  def fix_empty_ingredients
    self.ingredients = self.ingredients.select do |i|
      i.name != "" || i.quantity != ""
    end    
  end
end
