class AddColumnIngPositionToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :ing_position, :string
  end
end
