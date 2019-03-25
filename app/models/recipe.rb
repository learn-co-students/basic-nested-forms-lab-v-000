class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(attrs)
    binding.pry
    #self.ingredients.build(name: attrs)
  end
end
