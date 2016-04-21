class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients, reject_if: proc {|attributes| attributes[:quantity||:name].blank? }


  #   def ingredients_attributes=(ingredients)
  #     self.ingredients.map do |ingredient| {}
  #   end
  # end
end
