class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  #dont need setter here if uniqueness not necessary
end
