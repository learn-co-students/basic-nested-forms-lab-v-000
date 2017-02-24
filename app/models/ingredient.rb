class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :name, uniqueness: true
end
