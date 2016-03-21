class Recipe < ActiveRecord::Base
  has_many :ingredients
  #accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(hash)
    hash.each do |ingredient|
      if !ingredient[1][:name].empty? && !ingredient[1][:quantity].empty?
        self.ingredients << Ingredient.create(name: ingredient[1][:name], quantity: ingredient[1][:quantity])
      end
    end


  end

end
