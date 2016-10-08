class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
 # --automatically generates a setter method that creates the nested attributes for the ingredients object 
end
