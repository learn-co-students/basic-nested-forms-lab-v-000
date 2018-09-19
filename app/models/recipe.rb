class Recipe < ActiveRecord::Base
  has_many :ingredients
  # validates :title, presence: true
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
end
