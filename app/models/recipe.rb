class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :reject_if => :no_additional_ingredients

  def no_additional_ingredients(ingredients_attributes)
    ingredients_attributes[:name].blank? || ingredients_attributes[:quantity].blank?
  end
end
