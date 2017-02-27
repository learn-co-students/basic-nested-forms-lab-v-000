class Recipe < ActiveRecord::Base
  has_many :ingredients

  #accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(attrs)
    attrs.values.each do |attr|
      self.ingredients.build(attr)
    end
  end
end
