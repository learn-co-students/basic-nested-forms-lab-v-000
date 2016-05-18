class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredient)

  ingredient.each do |i|

    if i[1][:name] != ""
    binding.pry
      self.ingredients.new(name: i[1][:name], quantity: i[1][:quantity])
    end
    end
  

  end
end
