class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingr)
      binding.pry
      ingr.each do |i|
          self.ingredients << Ingredient.find_or_create_by(name: ingr.name)
      end
  end

  def ingredients_attributes
      self.ingredients.collect do |i|
          i.name
      end
  end
end
