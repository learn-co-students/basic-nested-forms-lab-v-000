class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates :name, uniqueness: true
  validates :quantity, uniqueness: true

end
