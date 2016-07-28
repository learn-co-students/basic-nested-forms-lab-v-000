require 'pry'
class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    counter = 0
    until counter > 10 do
      ingredient = ingredients[counter.to_s]
      if ingredient != nil 
        newing = Ingredient.find_or_create_by(name: ingredient["name"]) 
        if !ingredient["quantity"].empty?
          newing.quantity = ingredient["quantity"]
        end
        if newing != nil && newing.name != nil && newing.quantity != nil
          self.ingredients << newing
        end
      end
      counter += 1
    end
  end
end
