class Recipe < ActiveRecord::Base
  has_many :ingredients


  def ingredients_attributes=(ingredients)
    ingredients.each do |ingredient|
      if ingredient[1][:name] != "" && ingredient[1][:quantity] != ""

        self.ingredients << Ingredient.create(name: ingredient[1][:name], quantity: ingredient[1][:quantity])
      end
    end
  end

end
