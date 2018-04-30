class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def recipe_params
    params.require(:recipe).permit(:title)
  end
end
