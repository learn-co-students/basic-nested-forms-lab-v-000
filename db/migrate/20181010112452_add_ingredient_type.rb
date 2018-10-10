class AddIngredientType < ActiveRecord::Migration
  def change
    add_column :ingredients, :ingredient_type, :string
  end
end
