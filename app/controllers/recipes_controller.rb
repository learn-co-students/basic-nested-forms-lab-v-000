class RecipesController < ApplicationController
before_action :set_recipe, only: [:show, :update, :edit, :destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    binding.pry
    @recipe = Recipe.new
    2.times {@recipe.ingredients.build}
  end

  def create
    binding.pry
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
