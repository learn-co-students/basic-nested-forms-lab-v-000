class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes
  end

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |_i,ingredient_attributes|
      ingredients.build ingredient_attributes
    end
  end
end

# params = {
#   recipe: {
#     title: 'fhubarb',
#     ingredients_attributes: {
#       0 => { name: 'Fhu', quantity: '1 cup' },
#       1 => { name: 'Cherries', quantity: '2 cups' }
#     }
#   }
# }
