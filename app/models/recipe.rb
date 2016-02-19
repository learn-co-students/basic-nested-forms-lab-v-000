class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(new_ingredients)
    #binding.pry
    new_ingredients.each_value do |ing|
      #binding.pry
      if ing[:name] != ""
        ing = Ingredient.create(ing)
        ingredients << ing
      end
    end
  end
end
