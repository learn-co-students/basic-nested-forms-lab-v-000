class Recipe < ActiveRecord::Base
  has_many :ingredients

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  # def ingredients_attributes=(attributes)

  #   attributes.each do |i, ing_hash|
  #     self.ingredients.build(ing_hash)
  #   end
  # end
end
