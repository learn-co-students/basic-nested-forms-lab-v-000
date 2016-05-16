class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |c| c[:name].blank? }
end
