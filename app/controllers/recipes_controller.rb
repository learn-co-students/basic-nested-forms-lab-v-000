class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  # create_table "ingredients", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "quantity"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.integer  "recipe_id"

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'flour')
    @recipe.ingredients.build(quantity: '1 cup')
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end


end
