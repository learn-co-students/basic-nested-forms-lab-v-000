class Recipe < ActiveRecord::Base
  has_many :ingredients 
  #must place this in for nesting to work
  accepts_nested_attributes_for :ingredients
end
