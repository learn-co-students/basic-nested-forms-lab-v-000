class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingr)
    ingr.each do |_, ingredient|
      self.ingredients << Ingredient.find_or_create_by(name: ingredient[:name])
      self.ingredients.last.update(ingredient)
    end
  end
end
