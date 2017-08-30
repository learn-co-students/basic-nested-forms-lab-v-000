class Recipe < ActiveRecord::Base
  has_many :ingredients 
  # accepts_nested_attributes_for :ingredients


  def ingredients_attributes=(ingredients_attributes)
      ingredients_attributes.each do |i, ingredient_attributes|
        self.ingredients.build(ingredient_attributes)
      end
  end


# params = {
#     recipe: {
#        :title => "Pizza",
#        :ingredient_attributes => {
#          0 => {name: "dough", quantity: "1 lb"},
#          1 => {name: "cheese",quantity: "0.5 lb"}
#        }
#     }
# } 

end
