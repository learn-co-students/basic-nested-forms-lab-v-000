class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    ingredients.each do |ingred|
      if ingred[1]["name"].strip != ""
        self.ingredients.build(ingred[1])
      end
    end
  end

  def list_ingredients
    self.ingredients.pluck(:quantity, :name)
  end
end
