class Mamagoose < ActiveRecord::Base
  has_many :gozlinot
  accepts_nested_attributes_for :gozlinot
end
