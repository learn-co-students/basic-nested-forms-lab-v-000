class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  attr_accessor :number
end
