class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  before_validation :remove_empty_string

def remove_empty_string
  types.reject! { |l| l.empty? }
end
end
