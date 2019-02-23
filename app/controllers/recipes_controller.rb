class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: '1')
    @recipe.ingredients.build(ingredient_type: '2')
  end

  def create
  end

  def recipe_params
    params.require(:recipe).permit(
    :title,
    recipe_attributes: [
      :ingredient_name,
      :ingredient_amount,
      :ingredient_type
    ]
    )
  end
end
