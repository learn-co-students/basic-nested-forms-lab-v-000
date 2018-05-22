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
    @recipe.ingredients.build(name: '')
  end

  def create
    @recipe = Recipe.create(recipe_params)

    redirect_to recipe_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, ingredient_attributes: [:ingredient_0_name, :ingredient_0_quantity, :ingredient_1_name, :ingredient_1_quantity ])
  end
end
