class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(params[:recipe][:ingredients_attributes][0])
    @recipe.ingredients.build(params[:recipe][:ingredients_attributes][1])
  end

  def create
  end
end
