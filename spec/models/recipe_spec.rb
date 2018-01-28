require 'rails_helper'

describe "ingredients_attributes=" do
  it "creates ingredients with an array of hashes" do
    params = {
      :recipe => {
        :title => "Chocolate Cake",
        :ingredients_attributes => [
          {:name => "name_1", :quantity => "quantity_1"},
          {:name => "name_2", :quantity => "quantity_2"}
        ]
      }
    }

    @recipe = Recipe.new(params[:recipe])
    @recipe.save

    expect(Ingredient.all.count).to eq 2
    expect(Ingredient.last.name).to eq 'name_2'
    expect(Ingredient.first.name).to eq 'name_1'
  end
end
