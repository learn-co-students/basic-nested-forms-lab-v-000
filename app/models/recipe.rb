class Recipe < ActiveRecord::Base
  has_many :ingredients 
  # accepts_nested_attributes_for :ingredients, :reject_if => :all_blank

  def ingredients_attributes=(ing_array)
    ing_array.each do |i, ing_hash|
      self.ingredients.build(ing_hash) if (ing_hash[:name].present? && ing_hash[:quantity].present?)
    end
  end

end
