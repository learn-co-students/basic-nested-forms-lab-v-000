class Recipe < ActiveRecord::Base
  has_many :ingredients 
  # accepts nested attributes and rejects any if elements are blank
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |i| i[:name].blank? || i[:quantity].blank? }

end
