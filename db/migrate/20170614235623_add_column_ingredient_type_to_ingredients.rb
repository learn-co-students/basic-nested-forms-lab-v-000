class AddColumnIngredientTypeToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :ingerdient_type, :string
  end
end
