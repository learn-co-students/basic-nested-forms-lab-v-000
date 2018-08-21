require 'pry'

class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    binding.pry
    @recipe.ingredients.build(name:)
    @recipe.ingredients.build(quantity:)
  end

  def create
recipe = Recipe.create(recipe_params)
 redirect_to recipe_path
  end

 private

 def recipe_params
  params.require(:recipe).permit(:name, :quantity)

 end

end
