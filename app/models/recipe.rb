class Recipe < ActiveRecord::Base
  has_many :ingredients 

 # "recipe" => 
 # {
 #  "title" => "Chili", 
 #  "ingredients" => 
 #    {
 #      {
 #        "name" => "beans", 
 #        "quantity" => "15 oz"
 #      },
 #      {
 #        "name" => "sauce", 
 #        "quantity" => "24 oz"
 #      },
 #  }

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end  
  end

end  # End of Class
