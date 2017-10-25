class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients << Ingredient.new
    @recipe.ingredients << Ingredient.new
  end

  def create
    # binding.pry

    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:id, :name, :quantity])
  end
end