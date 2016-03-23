class Recipe < ActiveRecord::Base
  has_many :ingredients 

  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
# byebug
    ingredients.each{|i, v| 
      if v.none?{|k, v| v.empty?} 
        self.ingredients<<Ingredient.create(name: v["name"], quantity: v["quantity"])
      end
    }
  end

  def ingredients_attributes
    self.ingredients.collect{|i| {i.name=>i.quantity}}
  end
end
