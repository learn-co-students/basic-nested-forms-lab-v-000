class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  before_save :clear

  def clear
    self.ingredients.each do |ing|
      if ing.name.empty?
        ing.delete
      end
    end
  end
end


 