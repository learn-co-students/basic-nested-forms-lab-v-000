class CreateGozlinot < ActiveRecord::Migration
  def change
    create_table :gozlinot do |t|
      t.string :name
      t.integer :age
      t.integer :mamagoose_id
    end
  end
end
