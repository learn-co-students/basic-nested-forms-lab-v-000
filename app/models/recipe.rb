class Recipe < ActiveRecord::Base
  has_many :ingredients

  accepts_nested_attributes_for :ingredients
end

=begin
  def ingredients_attributes=(ingredients_attributes)
    #{:name=>"pepper", :quantity=>"a lot"}
    #this method wants a hash that looks like this
    #Ingredient.new(ingredients_attributes)
    binding.pry
  end

  def ingredients_attributes
    #self.   iterate through ingredient list
  end

=end
