class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients #methods to be included for building forms that accept multiple ingredients
end
