class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  # 
  # def recipe_title
  #   self.title
  # end
  #
  # def recipe_title=(rec_title)
  #   self.title = Recipe.find_or_create_by(title: rec_title)
  # end
  #
  # def recipe_ingredient_attributes
  #   self.ingredients.map{&:ingredients}
  # end
  #
  # def recipe_ingredient_attributes=(rec_ingredient_attributes)
  #   rec_ingredient_attributes.each do |ingredient|
  #     i = ingredient.strip
  #     if i != nil
  #       self.ingredients.build(ingredients: ingredient)
  #     end
  #   end
  # end
end
