class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  before_save :delete_empty_ingredients

  def delete_empty_ingredients
    self.ingredients = self.ingredients.select {|ingr| ingr.name != '' || ingr.quantity != ''}
  end
end
