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
    10.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.create(recipes_params)
    redirect_to recipe_path(@recipe)
  end


  private

  def recipes_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name,:quantity])
  end
end
