class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients


  def ingredients_attributes=(ingredients_attributes)
    ingredients_names = []
    ingredients_attributes.each do |index, ingredient_hash|
      if !ingredients_names.include?(ingredient_hash["name"]) 
        ingredients_names << ingredient_hash["name"]
        ingredient = Ingredient.create(ingredient_hash)
        self.ingredients << ingredient
      end
    end
  end
end
