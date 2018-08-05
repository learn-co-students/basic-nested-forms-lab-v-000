class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'first ingredient')
    @recipe.ingredients.build(name: 'second ingredient')
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

private
  def recipe_params
  params.require(:recipe).permit(
  :title,
  ingredients_attributes: [
    :ingredient_1,
    :ingredient_2,
    :name,
    :quantity
  ]
)
end
end
