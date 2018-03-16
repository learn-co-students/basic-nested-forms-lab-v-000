class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_hash)
    ingredients_hash.each do |i, ingredient_attribute|
      if ingredient_attribute[:name].present? && ingredient_attribute[:quantity].present?
        
        self.ingredients.build(name: ingredient_attribute[:name], quantity: ingredient_attribute[:quantity])
      end
    end
  end
end
