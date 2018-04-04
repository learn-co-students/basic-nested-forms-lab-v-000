class CreateMamageese < ActiveRecord::Migration
  def change
    create_table :mamageese do |t|
      t.string :name
      t.string :house
    end
  end
end
