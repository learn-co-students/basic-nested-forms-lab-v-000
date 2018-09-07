class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name_1
      t.string :name_2
      t.string :quantity

      t.timestamps null: false
    end
  end
end
