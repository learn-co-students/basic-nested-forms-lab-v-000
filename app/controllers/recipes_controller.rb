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
    @recipe = Recipe.create(recipe_params)
    binding.pry
    redirect_to recipe_path(@recipe)
  end

  def recipe_params
    params.require(:recipe).permit(
      :title, 
      :ingredients_attributes => [
        :name,
        :quantity
      ]
    )
  end
end
