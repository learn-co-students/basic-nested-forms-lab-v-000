require 'pry'
class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(attrs)
    attrs.each do |key, value|
      self.ingredients.find_or_initialize_by(value)
    end
  end

end
