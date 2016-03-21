class Ingredient < ActiveRecord::Base
  attr_accessor :ingredient_num
  belongs_to :recipe
end
