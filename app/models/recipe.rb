class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredient_name=(name)
    self.ingredients << Ingredient.find_or_create_by(name: name)
  end

  def ingredient_name
    self.ingredient ? self.ingredient.name : nil
  end 

end
