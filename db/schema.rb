ActiveRecord::Schema.define(version: 20160114135651) do

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
