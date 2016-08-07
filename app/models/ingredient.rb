class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  has_many :recipes

  def ingredients
    @ingredients = Ingredient.all
  end

  def ingredient
    self.try(:ingredients).try(:name)
  end

  def ingredient_quantity=(name)
     self.ingredient = Ingredient.find_or_create_by(name: name)
     self.ingredient = ingredient
  end

end
