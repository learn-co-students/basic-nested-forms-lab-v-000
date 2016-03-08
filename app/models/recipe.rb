class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    ingredients.values.each do |ingredient|
      self.ingredients.build(name: ingredient[:name], quantity: ingredient[:quantity]) unless ingredient[:quantity].empty?
    end
  end
end
