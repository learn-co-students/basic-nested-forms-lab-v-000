class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(attrs)
    self.ingredients.build(name: attrs["0"][:name], quantity: attrs["0"][:quantity])
    self.ingredients.build(name: attrs["1"][:name], quantity: attrs["1"][:quantity])
    self.save
  end
end
