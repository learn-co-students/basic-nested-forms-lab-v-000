class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients #methods to be included for building forms that accept multiple ingredients


  #following was added because it was in solution
  before_save :erase_empty_ingredients

  def erase_empty_ingredients
    self.ingredients = self.ingredients.select {|i| i.name && i.name != '' || i.quantity && i.quantity !=''}
  end
end
