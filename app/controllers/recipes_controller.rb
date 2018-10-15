class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build #(name: "Ingredient 1")
    @recipe.ingredients.build #(name: "Ingredient 2")
  end

  def create
    # binding.pry
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:quantity, :name])
  end
end
