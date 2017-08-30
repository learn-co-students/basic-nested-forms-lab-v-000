class Recipe < ActiveRecord::Base
  has_many :ingredients
  # ingredients_attributes= method will be created by accepts_nested_attributes_for
  accepts_nested_attributes_for :ingredients
  validates :title, uniqueness: true

end
