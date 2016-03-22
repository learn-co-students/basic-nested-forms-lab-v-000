class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  attr_accessor :num_ingredients
end
