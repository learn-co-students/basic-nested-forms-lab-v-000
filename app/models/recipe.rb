class Recipe < ActiveRecord::Base
  has_many :ingredients
  validates :title, uniqueness: true
end
