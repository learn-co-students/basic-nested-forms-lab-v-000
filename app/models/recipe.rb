class Recipe < ActiveRecord::Base
  has_many :ingredients

  # generates getter and setters
  accepts_nested_attributes_for :ingredients

end
