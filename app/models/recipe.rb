class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
end
# ingredients_attributes= is provided by accepts_nested_attributes_for :ingredients
# instance method #ingredients_attributes= is called on the recipe instance with
# hash argument whose keys "0" and "1" each point to a hash containing attribute data for 1 ingredient instance
# that will belong to the recipe instance
