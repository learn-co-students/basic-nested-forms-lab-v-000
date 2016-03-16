require 'pry'
class Recipe < ActiveRecord::Base
  has_many :ingredients 

  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank

  # def ingredients_attributes=(ingredients)
  #   self.ingredients.each do |ing|
  #     if !ing.name.empty? && !ing.quantity.empty?
  #       self.ingredients.build(ing)
  #       self.ingredients.update(ing)
  #     end
  #   end
  # end

  # def ingredients_attributes
  #   self.ingredients.map { |k,v| v }
  # end
end
