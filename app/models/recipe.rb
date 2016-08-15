class Recipe < ActiveRecord::Base
  has_many :ingredients
  before_save :clear_empty_ings
  accepts_nested_attributes_for :ingredients 

  def clear_empty_ings
    self.ingredients.each do |ing|
      if ing.name.nil? || ing.quantity.nil? 
        ing.delete
      elsif ing.name == "" || ing.quantity == ""
        ing.delete
      end
    end 
  end

end
